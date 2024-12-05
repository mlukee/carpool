"use client";

import Link from "next/link";

import { Car } from "lucide-react";

import { Button } from "@/components/ui/button";

export default function Home() {
  return (
    <>
      {/* Hero Section */}
      <div className="relative">
        <div className="mx-auto max-w-7xl px-6 sm:py-32 lg:px-8">
          <div className="flex flex-col items-center text-center">
            <Car className="mb-8 h-16 w-16 text-primary" />
            <h1 className="text-4xl font-bold tracking-tight text-foreground sm:text-6xl">
              Welcome to RideShareConnect
            </h1>
            <p className="mt-6 max-w-2xl text-lg leading-8 text-muted-foreground">
              Your go-to place for affordable travel. Find and offer rides
              easily!
            </p>
            <div className="mt-10 flex items-center gap-x-6">
              {/* <Button size="lg" asChild>
                <Link href="/find-ride">Find a Ride</Link>
              </Button>
              <Button variant="outline" size="lg" asChild>
                <Link href="/add-ride">Offer a Ride</Link>
              </Button> */}
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
