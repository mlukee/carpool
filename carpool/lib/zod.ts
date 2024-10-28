import { z } from "zod";

export const signUpSchema = z
  .object({
    username: z
      .string({ required_error: "Username is required" })
      .max(10)
      .min(2, { message: "Username must be at least 2 characters" }),
    name: z.string({ required_error: "Name is required" }).max(20),
    surname: z.string({ required_error: "Surname is required" }).max(20),
    email: z.string({ required_error: "Email is required" }).email(),
    password: z
      .string({ required_error: "Password is required" })
      .min(6, "Password must be at least 6 characters"),
    confirmPassword: z
      .string({ required_error: "Confirm Password is required" })
      .min(6),
    phone: z.string().min(9),
  })
  .refine(
    (data: { password: string; confirmPassword: string }) =>
      data.password === data.confirmPassword,
    {
      message: "Passwords do not match",
      path: ["confirmPassword"],
    }
  );

export const signInSchema = z.object({
  email: z.string({ required_error: "Email is required" }).email(),
  password: z.string({ required_error: "Password is required" }),
});
