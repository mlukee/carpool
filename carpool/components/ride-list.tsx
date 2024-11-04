import React from "react";

import { Calendar, Clock, Euro, EuroIcon, MapPin, Users } from "lucide-react";

import { Ride } from "@/types/types";

import { Button } from "./ui/button";
import { Card } from "./ui/card";

interface RideListProps {
  rides: Ride[];
}

export default function RideList({ rides }: RideListProps) {
  if (rides.length === 0) {
    return (
      <Card className="p-6 text-center">
        <p className="text-muted-foreground">
          No rides found matching your criteria.
        </p>
      </Card>
    );
  }
  return (
    <div className="space-y-4">
      {rides.map((ride) => (
        <Card
          key={ride.id}
          className="p-4 transition-shadow hover:shadow-lg lg:p-6"
        >
          <div className="flex flex-col gap-4 lg:flex-row lg:items-start">
            <div className="flex-1">
              <div className="mb-4 flex items-center gap-2 text-lg font-semibold">
                <MapPin className="h-5 w-5 text-primary" />
                <div className="flex flex-col gap-1 lg:flex-row lg:items-center lg:gap-2">
                  <span>{ride.origin}</span>
                  <span className="hidden lg:inline">→</span>
                  <span>{ride.destination}</span>
                </div>
              </div>

              <div className="mb-6 grid grid-cols-2 gap-4">
                <div className="flex items-center gap-2">
                  <Calendar className="h-4 w-4 text-gray-500" />
                  <span className="text-sm">
                    {new Date(ride.date).toLocaleDateString("en-US", {
                      year: "numeric",
                      month: "long",
                      day: "numeric",
                    })}
                  </span>
                </div>
                <div className="flex items-center gap-2">
                  <Clock className="h-4 w-4 text-gray-500" />
                  <span className="text-sm">{ride.departureTime}</span>
                </div>
                <div className="flex items-center gap-2">
                  <Users className="h-4 w-4 text-gray-500" />
                  <span className="text-sm">
                    {ride.seatsAvailable} seats left
                  </span>
                </div>
                <div className="flex items-center gap-2">
                  <span className="text-lg font-bold text-primary">
                    ${ride.pricePerSeat}
                  </span>
                  <span className="text-sm">per seat</span>
                </div>
              </div>

              <div className="flex flex-col justify-between gap-4 lg:flex-row lg:items-center">
                <Button className="w-full lg:w-auto">Book Now</Button>
              </div>
            </div>
          </div>
        </Card>
      ))}
    </div>
  );
}
