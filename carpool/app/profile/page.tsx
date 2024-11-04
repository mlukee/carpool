"use client";

import Link from "next/link";
import { useState } from "react";

import { zodResolver } from "@hookform/resolvers/zod";
import { Car, Mail, Phone, User } from "lucide-react";
import { useSession } from "next-auth/react";
import { useForm } from "react-hook-form";
import { toast } from "sonner";
import { z } from "zod";

import { Avatar } from "@/components/ui/avatar";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { UserBookedRides } from "@/components/user-booked-rides";
import { UserCars } from "@/components/user-cars";
import { updateProfileSchema } from "@/lib/zod";

export default function ProfilePage() {
  const { data: session, update } = useSession();

  const form = useForm<z.infer<typeof updateProfileSchema>>({
    resolver: zodResolver(updateProfileSchema),
    defaultValues: {
      name: session?.user.name || "",
      surname: session?.user.surname || "",
      username: session?.user.username || "",
      email: session?.user.email || "",
      phone: session?.user.phone || "",
    },
  });

  console.log("SESSION:", session);

  const handleSubmit = async (values: z.infer<typeof updateProfileSchema>) => {
    try {
      const response = await fetch(`/api/users/${session?.user.id}`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(values),
      });

      if (response.ok) {
        const updatedUser = await response.json();

        const user = {
          ...session!.user,
          name: updatedUser.name,
          surname: updatedUser.surname,
          username: updatedUser.username,
          email: updatedUser.email,
          phone: updatedUser.phone,
        };
        await update({
          ...session,
          user: {
            ...session!.user,
            name: updatedUser.name,
            surname: updatedUser.surname,
            username: updatedUser.username,
            email: updatedUser.email,
            phone: updatedUser.phone,
          },
        });
        toast.success("User updated successfully");
      } else {
        console.error("Failed to update user");
        toast.error("Failed to update user");
      }
    } catch (error) {
      console.error("Error updating user:", error);
      toast.error("An unexpected error occurred.");
    }
  };

  return (
    <div className="container mx-auto">
      <div className="mx-auto max-w-4xl">
        <div className="mb-8 flex items-center gap-6">
          <Avatar className="h-24 w-24">
            <User className="h-12 w-12" />
          </Avatar>
          <div>
            <h1 className="text-3xl font-bold text-foreground">
              {session?.user.name} {session?.user.surname}
            </h1>
            <p className="text-muted-foreground">@{session?.user.username}</p>
          </div>
        </div>

        <Tabs defaultValue="profile" className="space-y-6">
          <TabsList>
            <TabsTrigger value="profile">Profile</TabsTrigger>
            <TabsTrigger value="cars">My Cars</TabsTrigger>
            <TabsTrigger value="rides">My Rides</TabsTrigger>
          </TabsList>

          <TabsContent value="profile">
            <Card className="p-6">
              <Form {...form}>
                <form
                  className="space-y-6"
                  onSubmit={form.handleSubmit(handleSubmit)}
                >
                  <div className="grid gap-6 md:grid-cols-2">
                    <FormField
                      control={form.control}
                      name="name"
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>First Name</FormLabel>
                          <FormControl>
                            <Input {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name="surname"
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Last Name</FormLabel>
                          <FormControl>
                            <Input {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                  </div>

                  <FormField
                    control={form.control}
                    name="username"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>Username</FormLabel>
                        <FormControl>
                          <div className="relative">
                            <Input {...field} className="pl-10" />
                            <User className="absolute left-3 top-3 h-4 w-4 text-gray-500" />
                          </div>
                        </FormControl>
                        <FormMessage />
                      </FormItem>
                    )}
                  />

                  <FormField
                    control={form.control}
                    name="email"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>Email</FormLabel>
                        <FormControl>
                          <div className="relative">
                            <Input {...field} type="email" className="pl-10" />
                            <Mail className="absolute left-3 top-3 h-4 w-4 text-gray-500" />
                          </div>
                        </FormControl>
                        <FormMessage />
                      </FormItem>
                    )}
                  />

                  <FormField
                    control={form.control}
                    name="phone"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>Phone</FormLabel>
                        <FormControl>
                          <div className="relative">
                            <Input {...field} type="tel" className="pl-10" />
                            <Phone className="absolute left-3 top-3 h-4 w-4 text-gray-500" />
                          </div>
                        </FormControl>
                        <FormMessage />
                      </FormItem>
                    )}
                  />

                  <div className="flex justify-end">
                    <Button type="submit">Save Changes</Button>
                  </div>
                </form>
              </Form>
            </Card>
          </TabsContent>

          <TabsContent value="cars">
            <Card className="p-6">
              <div className="mb-6 flex items-center justify-between">
                <h2 className="flex items-center gap-2 text-xl font-semibold">
                  <Car className="h-5 w-5" />
                  My Cars
                </h2>
                <Link href="/add-car">
                  <Button>
                    <Car className="mr-2 h-4 w-4" />
                    Add New Car
                  </Button>
                </Link>
              </div>
              <UserCars userId={session?.user.id} />
            </Card>
          </TabsContent>

          <TabsContent value="rides">
            <Card className="p-6">
              <div className="mb-6 flex items-center justify-between">
                <h2 className="flex items-center gap-2 text-xl font-semibold">
                  <Car className="h-5 w-5" />
                  My Booked Rides
                </h2>
                <Link href="/find-ride">
                  <Button>
                    <Car className="mr-2 h-4 w-4" />
                    Book a Ride
                  </Button>
                </Link>
              </div>
              <UserBookedRides userId={session?.user.id} />
            </Card>
          </TabsContent>
        </Tabs>
      </div>
    </div>
  );
}
