import "next-auth";

declare module "next-auth" {
  interface Session {
    user: {
      id: string;
      name: string;
      surname: string;
      email: string;
      phone: string;
      username: string;
    } & DefaultSession["user"];
  }
  interface User {
    id: string;
    name: string;
    surname: string;
    email: string;
    phone: string;
    username: string;
  }
}
