"use client";

import { useRouter, useSearchParams } from "next/navigation";

import { zodResolver } from "@hookform/resolvers/zod";
import { useSession } from "next-auth/react";
import { useForm } from "react-hook-form";
import { toast } from "sonner";
import { z } from "zod";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormMessage,
} from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import { addCarSchema } from "@/lib/zod";

interface CarProps {
  car?: {
    _id: string;
    carModel: string;
    year: number;
    licensePlate: string;
    owner: string;
  };
}

export default function AddCar() {
  const session = useSession();
  const user = session.data?.user;
  const router = useRouter();
  const searchParams = useSearchParams();

  const carId = searchParams.get("carId");
  const carModel = searchParams.get("carModel") || "";
  const year = searchParams.get("year")
    ? Number(searchParams.get("year"))
    : 2000;
  const licensePlate = searchParams.get("licensePlate") || "";

  const form = useForm<z.infer<typeof addCarSchema>>({
    resolver: zodResolver(addCarSchema),
    defaultValues: {
      carModel,
      year,
      licensePlate,
    },
  });

  const onSubmit = async (values: z.infer<typeof addCarSchema>) => {
    try {
      const endpoint = carId
        ? `/api/users/${user.id}/cars/${carId}`
        : `/api/cars?ownerId=${user.id}`;
      const method = carId ? "PATCH" : "POST";

      const res = await fetch(endpoint, {
        method: method,
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(values),
      });

      if (res.ok) {
        toast.success(
          carId ? "Car updated successfully" : "Car added successfully"
        );
        router.push("/profile");
      } else {
        toast.error(
          `Failed to ${carId ? "update" : "add"} car. Please try again.`
        );
      }
    } catch (error) {
      console.error("Error submitting form:", error);
      toast.error("An unexpected error occurred.");
    }
  };

  return (
    <div className="flex h-full items-center justify-center">
      <Card className="w-[80%] p-4 sm:w-[420px] sm:p-8 md:h-auto">
        <CardHeader>
          <CardTitle className="text-center text-lg">Add your car</CardTitle>
        </CardHeader>
        <CardContent className="px-2 sm:px-6">
          <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-3">
              <FormField
                control={form.control}
                name="carModel"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Input placeholder="Car Model" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="year"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Input
                        placeholder="Car Year"
                        type="number"
                        {...field}
                        onChange={(e) =>
                          field.onChange(
                            e.target.value ? Number(e.target.value) : ""
                          )
                        }
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="licensePlate"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Input placeholder="License Plate" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <Button className="w-full" type="submit">
                Add car
              </Button>
            </form>
          </Form>
        </CardContent>
      </Card>
    </div>
  );
}
