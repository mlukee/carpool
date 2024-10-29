import { z } from "zod";
import cities from "@/types/cities";

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

const cityNames = cities.map((city) => city.city);

export const searchForRideSchema = z.object({
  origin: z.enum(cityNames as [string, ...string[]], {
    required_error: "Origin is required",
    message: "Origin is required",
  }),
  destination: z.enum(cityNames as [string, ...string[]], {
    required_error: "Destination is required",
    message: "Destination is required",
  }),
  date: z.date({ required_error: "Date is required" }),
});

export const signInSchema = z.object({
  email: z.string({ required_error: "Email is required" }).email(),
  password: z.string({ required_error: "Password is required" }),
});

export const addRideSchema = z.object({
  origin: z.enum(cityNames as [string, ...string[]], {
    required_error: "Origin is required",
    message: "Origin is required",
  }),
  destination: z.enum(cityNames as [string, ...string[]], {
    required_error: "Destination is required",
    message: "Destination is required",
  }),
  date: z.date({ required_error: "Date is required" }),
  departureTime: z.string({ required_error: "Time is required" }),
  seatsAvailable: z.number({ required_error: "Seats are required" }),
  pricePerSeat: z.number({ required_error: "Price per seat is required" }),
  comments: z.string(),
});

export const addCarSchema = z.object({
  carModel: z
    .string({
      required_error: "Car model is required",
      message: "Car model is required",
    })
    .trim()
    .min(6),
  year: z.number({
    required_error: "Year is required",
  }),
  licensePlate: z
    .string({
      required_error: "License plate is required",
      message: "License plate is required",
    })
    .trim(),
});
