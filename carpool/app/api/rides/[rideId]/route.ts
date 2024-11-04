import { NextResponse } from "next/server";

import { Types } from "mongoose";

import connect from "@/lib/db";
import Ride from "@/models/ride";

export const PATCH = async (
  req: Request,
  context: { params: Promise<{ rideId: string }> }
) => {
  const { rideId } = await context.params;
  try {
    if (!rideId) {
      return NextResponse.json("Missing rideId", { status: 400 });
    }

    if (!Types.ObjectId.isValid(rideId)) {
      return NextResponse.json("Invalid rideId", { status: 401 });
    }

    await connect();

    const body = await req.json();
    const { seatsAvailable, passengerId } = body;

    if (typeof seatsAvailable !== "number" || !passengerId) {
      return NextResponse.json("Invalid input data", { status: 400 });
    }

    // Update the ride: decrease seatsAvailable and add the passenger to the passengers array
    const updatedRide = await Ride.findByIdAndUpdate(
      rideId,
      {
        $push: { passengers: passengerId },
      },
      { new: true } // Returns the updated document
    );

    if (!updatedRide) {
      return NextResponse.json("Ride not found", { status: 404 });
    }

    return NextResponse.json(
      JSON.stringify({ message: "Ride is updated", ride: updatedRide }),
      { status: 200 }
    );
  } catch (error: unknown) {
    const errorMessage =
      error instanceof Error ? error.message : "Unknown error";
    return NextResponse.json(`Error updating ride ${errorMessage}`, {
      status: 500,
    });
  }
};
