import bcrypt from "bcryptjs";
import NextAuth from "next-auth";
import Credentials from "next-auth/providers/credentials";

import connect from "@/lib/db";
import { signInSchema } from "@/lib/zod";
import User from "@/models/user";

export const { handlers, signIn, signOut, auth } = NextAuth({
  session: { strategy: "jwt" },
  providers: [
    Credentials({
      name: "Credentials",
      credentials: {},
      authorize: async (credentials) => {
        const parsedCredentials = signInSchema.safeParse(credentials);
        if (!parsedCredentials.success) {
          return null;
        }

        const { email, password } = parsedCredentials.data;

        try {
          await connect();

          const user = await User.findOne({ email });

          if (!user) {
            return null;
          }

          const isMatch = await bcrypt.compare(password, user.password);

          if (!isMatch) {
            return null;
          }

          return {
            id: user._id.toString(),
            name: user.name,
            surname: user.surname,
            email: user.email,
            phone: user.phone,
          };
        } catch (error) {
          console.log(error);
        }

        return null;
      },
    }),
  ],
  pages: {
    signIn: "/auth/signin",
  },
  callbacks: {
    async session({ session, token }) {
      if (token?.sub && token?.email) {
        session.user.id = token.sub;
        session.user.email = token.email;
        session.user.name = token.name;
        session.user.surname = token.surname;
        session.user.phone = token.phone;
      }
      return session;
    },
    async jwt({ token, user }) {
      if (user) {
        token.sub = user.id;
        token.email = user.email;
        token.name = user.name;
        token.surname = user.surname;
        token.phone = user.phone;
      }

      return token;
    },
  },
  secret: process.env.AUTH_SECRET,
});
