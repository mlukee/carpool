import NextAuth from "next-auth";
import Credentials from "next-auth/providers/credentials";
import { signInSchema } from "@/lib/zod";
import connect from "@/lib/db";
import bcrypt from "bcryptjs";

export const { handlers, signIn, signOut, auth } = NextAuth({
  providers: [
    Credentials({
      name: "Credentials",
      credentials: {},
      async authorize(credentials) {
        const parsedCredentials = signInSchema.safeParse(credentials);
        if (!parsedCredentials.success) {
          return null;
        }

        const { email, password } = parsedCredentials.data;

        await connect();

        const user = await fetch("http://localhost:3000/api/users");

        const data = await user.json();

        const foundUser = data.find((user: any) => user.email === email);

        if (!foundUser) {
          return null;
        }

        if (await bcrypt.compare(password, foundUser.password)) {
          return foundUser;
        }
        return null;
      },
    }),
  ],
  pages: {
    signIn: "/auth/signin",
  },
});
