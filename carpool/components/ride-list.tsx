import React from "react";

import { Calendar, Clock, MapPin, User, Users } from "lucide-react";
import { toast } from "sonner";

import { Ride } from "@/types/types";

import { Button } from "./ui/button";
import { Card } from "./ui/card";

interface RideListProps {
  rides: Ride[];
  onUpdateRide: (rideId: string, updatedRide: Partial<Ride>) => void;
  userId: string | null;
}

export default function RideList({
  rides,
  onUpdateRide,
  userId,
}: RideListProps) {
  const checkIfRideIsAvailable = (ride: Ride, userId?: string | null) => {
    // Disable if there are no seats available
    if (ride.seatsAvailable - ride.passengers.length === 0) {
      return true;
    }

    // Disable if user is not logged in
    if (!userId) {
      return true;
    }

    // Disable if the user has already booked the ride
    if (ride.passengers.includes(userId)) {
      return true;
    }

    // If none of the above conditions are met, the ride is available for booking
    return false;
  };

  const handleBookNow = async (ride: Ride) => {
    if (!userId) {
      toast.info("Please sign in to book a ride.");
      return;
    }

    if (ride.seatsAvailable < 1) {
      toast.info("No seats available for this ride.");
      return;
    }

    try {
      const response = await fetch(`/api/rides/${ride._id}`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          seatsAvailable: ride.seatsAvailable - 1,
          passengerId: userId,
        }),
      });

      if (!response.ok) {
        throw new Error("Failed to book ride.");
      }

      const updatedRide = {
        ...ride,
        passengers: [...ride.passengers, userId],
      };
      onUpdateRide(ride._id, updatedRide);
      toast.success("Booking successful!");
    } catch (error) {
      console.error(error);
      toast.error("An error occurred while booking the ride.");
    }
  };

  if (rides.length === 0) {
    return (
      <Card className="max-h-28 p-6 text-center">
        <p className="text-muted-foreground">
          No rides found matching your criteria.
        </p>
      </Card>
    );
  }
  console.log("ride", rides);
  return (
    <div className="space-y-4">
      {rides.map((ride) => (
        <Card
          key={ride._id}
          className="p-4 transition-shadow hover:shadow-lg lg:p-6"
        >
          <div className="flex flex-col gap-4 lg:flex-row lg:items-start">
            <div className="flex-1">
              <div className="mb-4 flex items-center gap-2 text-lg font-semibold">
                <MapPin className="h-5 w-5 text-primary" />
                <div className="flex flex-row items-center gap-1 lg:gap-2">
                  <span>{ride.origin}</span>
                  <span className="inline">→</span>
                  <span>{ride.destination}</span>
                </div>
              </div>

              <div className="mb-6 grid grid-cols-2 gap-4">
                <div className="flex items-center gap-2">
                  <User className="h-4 w-4" />
                  <span className="text-sm">
                    Driver: {ride.driver.name} {ride.driver.surname}
                  </span>
                </div>
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
                    {ride.seatsAvailable - ride.passengers.length} seats left
                  </span>
                </div>
                {ride.comments && (
                  <div className="flex items-center gap-2">
                    <span className="text-sm font-bold">Comment: </span>
                    <span className="text-sm">{ride.comments}</span>
                  </div>
                )}

                <div className="flex items-center gap-2">
                  <span className="text-lg font-bold text-primary">
                    {ride.pricePerSeat} &euro;
                  </span>
                  <span className="text-sm">per seat</span>
                </div>
              </div>

              <div className="flex flex-col justify-between gap-4 lg:flex-row lg:items-center">
                <Button
                  className="w-full lg:w-auto"
                  onClick={() => handleBookNow(ride)}
                  disabled={checkIfRideIsAvailable(ride, userId)}
                >
                  {!userId
                    ? "Sign in to book"
                    : checkIfRideIsAvailable(ride, userId)
                      ? "Booked"
                      : "Book Now"}
                </Button>
              </div>
            </div>
          </div>
        </Card>
      ))}
    </div>
  );
}
