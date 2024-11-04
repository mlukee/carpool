import { NextRequest, NextResponse } from "next/server";

import connect from "@/lib/db";
import Ride from "@/models/ride";

export const GET = async (
  req: Request,
  context: { params: Promise<{ userId: string }> }
) => {
  try {
    await connect();

    const { userId } = await context.params;

    if (!userId) {
      return NextResponse.json(
        { message: "User ID is required" },
        { status: 400 }
      );
    }

    const rides = await Ride.find({ passengers: userId }).select(
      "-passengers -createdAt -updatedAt -seatsAvailable -comments"
    );

    if (!rides || rides.length === 0) {
      return NextResponse.json(
        { message: "No rides found for this user" },
        { status: 404 }
      );
    }

    return NextResponse.json(rides);
  } catch (error) {
    console.error("Error fetching rides for user.", error);
    return NextResponse.json(
      { message: "Error fetching rides for user." },
      { status: 500 }
    );
  }
};
