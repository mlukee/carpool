import { NextResponse } from "next/server";

import connect from "@/lib/db";
import Ride from "@/models/ride";

export async function PATCH(
  req: Request,
  context: { params: Promise<{ userId: string; rideId: string }> }
) {
  try {
    await connect();

    const { userId, rideId } = await context.params;

    if (!userId) {
      return NextResponse.json(
        { message: "User ID is required" },
        { status: 400 }
      );
    }

    if (!rideId) {
      return NextResponse.json(
        { message: "Ride ID is required" },
        { status: 400 }
      );
    }

    const ride = await Ride.findByIdAndUpdate(rideId, {
      $pull: { passengers: userId },
    });

    if (!ride) {
      return NextResponse.json({ message: "No ride found." }, { status: 404 });
    }

    return NextResponse.json(ride);
  } catch (error) {
    console.error("Error updating ride for user.", error);
    return NextResponse.json(
      { message: "Error updating ride for user." },
      { status: 500 }
    );
  }
}
