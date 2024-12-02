"use client";

import { useEffect, useState } from "react";

import { useSession } from "next-auth/react";

import FindARide from "@/components/find-a-ride";
import RideList from "@/components/ride-list";
import { FilterCriteria, Ride } from "@/types/types";

export default function FindRide() {
  const [rides, setRides] = useState<Ride[]>([]);
  const [filteredRides, setFilteredRides] = useState<Ride[]>([]);

  const { data: session } = useSession();

  useEffect(() => {
    const fetchRides = async () => {
      try {
        const response = await fetch("/api/rides");
        const data: Ride[] = await response.json();
        setRides(data);
        setFilteredRides(data);
      } catch (error) {
        console.error("Error fetching rides:", error);
      }
    };

    fetchRides();
  }, []);

  const handleFilter = (filters: FilterCriteria) => {
    const { origin, destination, date } = filters;

    const filtered = rides.filter((ride) => {
      const matchesOrigin =
        origin && origin !== "All" ? ride.origin === origin : true;
      const matchesDestination =
        destination && destination !== "All"
          ? ride.destination === destination
          : true;
      const matchesDate = date
        ? new Date(ride.date).toDateString() === new Date(date).toDateString()
        : true;

      return matchesOrigin && matchesDestination && matchesDate;
    });

    setFilteredRides(filtered);
  };

  const onUpdateRide = (rideId: string, updatedRideData: Partial<Ride>) => {
    setRides((prevRides) =>
      prevRides.map((ride) =>
        ride._id === rideId ? { ...ride, ...updatedRideData } : ride
      )
    );
    setFilteredRides((prevFilteredRides) =>
      prevFilteredRides.map((ride) =>
        ride._id === rideId ? { ...ride, ...updatedRideData } : ride
      )
    );
  };

  return (
    <>
      <div className="mx-auto max-w-7xl px-6">
        <h1 className="mb-8 text-3xl font-bold">Available Rides</h1>
        <div className="grid grid-cols-2 gap-8">
          <FindARide onFilter={handleFilter} />
          <RideList
            rides={filteredRides}
            onUpdateRide={onUpdateRide}
            userId={session?.user?.id}
          />
        </div>
      </div>
    </>
  );
}
