import { zodResolver } from "@hookform/resolvers/zod";
import { format } from "date-fns";
import { CalendarIcon } from "lucide-react";
import { useSession } from "next-auth/react";
import { useForm } from "react-hook-form";
import { z } from "zod";

import { Button } from "@/components/ui/button";
import { Calendar } from "@/components/ui/calendar";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
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
import { cn } from "@/lib/utils";
import { searchForRideSchema } from "@/lib/zod";
import cities from "@/types/cities";
import { FilterCriteria } from "@/types/types";

interface FindARideProps {
  onFilter: (criteria: FilterCriteria) => void;
}

//TODO: do this everywhere
type SearchFormValues = z.infer<typeof searchForRideSchema>;

function FindARide({ onFilter }: FindARideProps) {
  const form = useForm<SearchFormValues>({
    resolver: zodResolver(searchForRideSchema),
    defaultValues: {
      origin: "All",
      destination: "All",
      date: undefined,
    },
  });

  const onSubmit = async (values: SearchFormValues) => {
    console.log("Form submitted:", values);
    onFilter(values);
  };

  return (
    <div className="mx-auto flex w-full items-center justify-center">
      <Card className="w-full p-4 sm:w-[420px] sm:p-8 md:h-auto">
        <CardHeader>
          <CardTitle className="text-center text-lg">Find A Ride</CardTitle>
        </CardHeader>
        <CardContent className="px-2 sm:px-6">
          <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-3">
              <FormField
                control={form.control}
                name="origin"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>From</FormLabel>
                    <Select onValueChange={field.onChange}>
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="From"></SelectValue>
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        {["All", ...cities.map((city) => city.city)].map(
                          (city) => (
                            <SelectItem key={city} value={city}>
                              {city}
                            </SelectItem>
                          )
                        )}
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="destination"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>To</FormLabel>
                    <Select onValueChange={field.onChange}>
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="To"></SelectValue>
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        {["All", ...cities.map((city) => city.city)].map(
                          (city) => (
                            <SelectItem key={city} value={city}>
                              {city}
                            </SelectItem>
                          )
                        )}
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="date"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Date</FormLabel>
                    <FormControl>
                      <Popover>
                        <PopoverTrigger asChild>
                          <Button
                            variant={"outline"}
                            className={cn(
                              "w-full justify-start text-left font-normal",
                              !field.value && "text-muted-foreground"
                            )}
                          >
                            <CalendarIcon />
                            {field.value ? (
                              format(field.value, "PPP")
                            ) : (
                              <span>Pick a date</span>
                            )}
                          </Button>
                        </PopoverTrigger>
                        <PopoverContent className="w-auto p-0" align="start">
                          <Calendar
                            mode="single"
                            selected={field.value}
                            onSelect={(day) => field.onChange(day)}
                            initialFocus
                          />
                        </PopoverContent>
                      </Popover>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <Button className="w-full" type="submit">
                Find ride
              </Button>
            </form>
          </Form>
        </CardContent>
      </Card>
    </div>
  );
}

export default FindARide;
