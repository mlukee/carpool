"use client";

import Link from "next/link";
import React from "react";

import { zodResolver } from "@hookform/resolvers/zod";
import { AuthError } from "next-auth";
import { useForm } from "react-hook-form";
import { toast } from "sonner";
import { z } from "zod";

import { handleCredentialsSignin } from "@/app/actions/authActions";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormMessage,
} from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import { Separator } from "@/components/ui/separator";
import { signInSchema } from "@/lib/zod";

export default function SignIn() {
  const form = useForm<z.infer<typeof signInSchema>>({
    resolver: zodResolver(signInSchema),
    defaultValues: {
      email: "",
      password: "",
    },
  });

  const onSubmit = async (values: z.infer<typeof signInSchema>) => {
    try {
      await handleCredentialsSignin(values);
    } catch (error) {
      if (error instanceof AuthError) {
        switch (error.type) {
          case "CredentialsSignin":
            form.setError("password", { message: "Invalid credentials." });
            form.setError("email", { message: "Invalid credentials." });
            return;
          default:
            toast.error("Something went wrong.");
            return;
        }
      }
    }
  };

  return (
    <div className="flex h-full items-center justify-center">
      <Card className="w-[80%] p-4 sm:w-[420px] sm:p-8 md:h-auto">
        <CardHeader>
          <CardTitle className="text-center text-lg">Sign in</CardTitle>
          <CardDescription className="text-center text-sm text-accent-foreground">
            Log in to your account.
          </CardDescription>
        </CardHeader>
        <CardContent className="px-2 sm:px-6">
          <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-3">
              <FormField
                control={form.control}
                name="email"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Input placeholder="Email" type="email" {...field} />
                    </FormControl>
                    <FormMessage>
                      {form.formState.errors.email?.message}
                    </FormMessage>
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="password"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Input
                        placeholder="Password"
                        type="password"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage>
                      {form.formState.errors.password?.message}
                    </FormMessage>
                  </FormItem>
                )}
              />

              <Button
                className="w-full"
                type="submit"
                disabled={form.formState.isSubmitting}
              >
                Sign up
              </Button>
            </form>
            <Separator className="my-6" />
            <p className="text-center text-sm text-muted-foreground">
              Don&apos;t have an account?
              <Link
                className="ml-4 cursor-pointer text-sky-700 hover:underline"
                href="/sign-up"
              >
                Sign Up
              </Link>
            </p>
          </Form>
        </CardContent>
      </Card>
    </div>
  );
}
