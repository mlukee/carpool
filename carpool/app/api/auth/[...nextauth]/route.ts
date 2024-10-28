import NextAuth from "next-auth";
import CredentialsProvider from "next-auth/providers/credentials";
import { signInSchema } from "@/lib/zod";
import connect from "@/lib/db";
import User from "@/lib/models/user";
import bcrypt from "bcryptjs";

const handler = NextAuth({
  providers: [
    CredentialsProvider({
      name: "credentials",
      credentials: {
        email: {
          label: "Email",
          type: "email",
          placeholder: "Email",
        },
        password: {
          label: "Password",
          type: "password",
          placeholder: "Password",
        },
      },
      async authorize(credentials) {
        const parsedCredentials = signInSchema.safeParse(credentials);

        if (!parsedCredentials.success) {
          return null;
        }

        const { email, password } = parsedCredentials.data;

        await connect();

        try {
          const exsitingUser = await User.findOne({ email });
          if (!exsitingUser) {
            throw new Error("User not found");
          }

          const checkPasswd = await bcrypt.compare(
            password,
            exsitingUser.password
          );

          if (!checkPasswd) {
            throw new Error("Invalid credentials");
          }

          return exsitingUser;
        } catch (error: any) {
          throw new Error(error.message);
        }
      },
    }),
  ],
  pages: {
    signIn: "auth/signin",
  },
});

export { handler as GET, handler as POST };
