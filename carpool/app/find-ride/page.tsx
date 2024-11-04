"use client";

import { useEffect, useState } from "react";

import FindARide from "@/components/find-a-ride";
import RideList from "@/components/ride-list";
import { FilterCriteria, Ride } from "@/types/types";

export default function FindRide() {
  const [rides, setRides] = useState<Ride[]>([]);
  const [filteredRides, setFilteredRides] = useState<Ride[]>([]);

  useEffect(() => {
    const fetchRides = async () => {
      try {
        const response = await fetch("/api/rides"); // Your endpoint to fetch rides
        const data: Ride[] = await response.json();
        setRides(data); // Set the fetched rides
        setFilteredRides(data); // Initialize filteredRides with all rides
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

  return (
    <>
      <div className="mx-auto max-w-7xl px-6">
        <h1 className="mb-8 text-3xl font-bold">Find a Ride</h1>
        <div className="grid gap-8 lg:grid-cols-[350px,1fr]">
          <FindARide onFilter={handleFilter} />
          <RideList rides={filteredRides} />
        </div>
      </div>
    </>
  );
}
