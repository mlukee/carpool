"use client";

import { useRouter } from "next/navigation";

import { zodResolver } from "@hookform/resolvers/zod";
import { CalendarIcon } from "@radix-ui/react-icons";
import { format } from "date-fns";
import { Euro, Users } from "lucide-react";
import { useSession } from "next-auth/react";
import { useForm } from "react-hook-form";
import { toast } from "sonner";
import { z } from "zod";

import { Button } from "@/components/ui/button";
import { Calendar } from "@/components/ui/calendar";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormMessage,
} from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Textarea } from "@/components/ui/textarea";
import { addRideSchema } from "@/lib/zod";
import cities from "@/types/cities";

export default function AddRide() {
  const { data: session } = useSession();
  const router = useRouter();
  const form = useForm<z.infer<typeof addRideSchema>>({
    resolver: zodResolver(addRideSchema),
    defaultValues: {
      origin: "",
      destination: "",
      date: undefined,
      departureTime: "",
      seatsAvailable: undefined,
      pricePerSeat: undefined,
      comments: "",
    },
  });

  const onSubmit = async (values: z.infer<typeof addRideSchema>) => {
    const reqBody = {
      ...values,
      driver: session?.user.id,
    };

    try {
      const endpoint = "http://localhost:3000/api/rides";

      const res = await fetch(endpoint, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(reqBody),
      });

      if (res.ok) {
        toast.success("Ride added successfully");
        form.reset();
        router.push("/find-ride");
      } else {
        toast.error("Failed to add ride. Please try again.");
      }

      console.log("Form submitted:", reqBody);
    } catch (error) {}
  };

  return (
    <div className="mx-auto flex w-full items-center justify-center">
      <Card className="w-full p-4 sm:w-[420px] sm:p-8 md:h-auto">
        <CardHeader>
          <CardTitle className="text-center text-lg">
            Offer a New Ride
          </CardTitle>
        </CardHeader>
        <CardContent className="px-2 sm:px-6">
          <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-3">
              {/* Origin Field */}
              <FormField
                control={form.control}
                name="origin"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Select onValueChange={field.onChange}>
                        <SelectTrigger>
                          <SelectValue placeholder="Start Location:" />
                        </SelectTrigger>
                        <SelectContent>
                          {cities.map((city) => (
                            <SelectItem key={city.city} value={city.city}>
                              {city.city}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Destination Field */}
              <FormField
                control={form.control}
                name="destination"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Select onValueChange={field.onChange}>
                        <SelectTrigger>
                          <SelectValue placeholder="End Location:" />
                        </SelectTrigger>
                        <SelectContent>
                          {cities.map((city) => (
                            <SelectItem key={city.city} value={city.city}>
                              {city.city}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Date Field */}
              <FormField
                control={form.control}
                name="date"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Popover>
                        <PopoverTrigger asChild>
                          <Button
                            variant={"outline"}
                            className="w-full justify-start text-left font-normal"
                          >
                            <CalendarIcon className="mr-2" />
                            {field.value
                              ? format(field.value, "PPP")
                              : "Date of Travel"}
                          </Button>
                        </PopoverTrigger>
                        <PopoverContent className="w-auto p-0" align="start">
                          <Calendar
                            mode="single"
                            selected={field.value}
                            onSelect={(day) =>
                              field.onChange(day || new Date())
                            }
                            initialFocus
                          />
                        </PopoverContent>
                      </Popover>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Departure Time Field */}
              <FormField
                control={form.control}
                name="departureTime"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Input
                        type="time"
                        step={900}
                        placeholder="Time"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Seats Available Field */}
              <FormField
                control={form.control}
                name="seatsAvailable"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <div className="space-y-2">
                        <div className="relative">
                          <Input
                            type="number"
                            min="1"
                            max="8"
                            className="pl-10"
                            placeholder="Available Seats"
                            onChange={(e) =>
                              field.onChange(
                                e.target.value ? Number(e.target.value) : ""
                              )
                            }
                          />
                          <Users className="absolute left-3 top-3 h-4 w-4" />
                        </div>
                        <FormMessage />
                      </div>
                    </FormControl>
                  </FormItem>
                )}
              />

              {/* Price Per Seat Field */}
              <FormField
                control={form.control}
                name="pricePerSeat"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <div className="space-y-2">
                        <div className="relative">
                          <Input
                            id="seats"
                            type="number"
                            className="pl-10"
                            placeholder="Cost per Seat in EUR:"
                            min={0}
                            step={0.5}
                            onChange={(e) =>
                              field.onChange(
                                e.target.value ? Number(e.target.value) : ""
                              )
                            }
                          />
                          <Euro className="absolute left-3 top-3 h-4 w-4" />
                        </div>
                      </div>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Comments Field */}
              <FormField
                control={form.control}
                name="comments"
                render={({ field }) => (
                  <FormItem>
                    <FormControl>
                      <Textarea
                        placeholder="Additional Info (optional)"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Submit Button */}
              <Button className="w-full" type="submit">
                Offer a Ride
              </Button>
            </form>
          </Form>
        </CardContent>
      </Card>
    </div>
  );
}
