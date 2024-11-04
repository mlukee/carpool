import { NextResponse } from "next/server";

import connect from "@/lib/db";
import { addRideSchema } from "@/lib/zod";
import Ride from "@/models/ride";

export const POST = async (req: Request) => {
  try {
    await connect();

    const body = await req.json();

    if (body.date) {
      body.date = new Date(body.date);
    }

    // Validate request body against the schema
    const parsedBody = addRideSchema.safeParse(body);
    if (!parsedBody.success) {
      return NextResponse.json(
        { message: "Invalid ride data", errors: parsedBody.error.flatten() },
        { status: 400 }
      );
    }

    const ride = new Ride(parsedBody.data);
    await ride.save();

    return NextResponse.json(ride, { status: 201 });
  } catch (error) {
    console.error("Error creating ride:", error);
    return NextResponse.json(
      { message: "Error creating ride", error: error.message },
      { status: 500 }
    );
  }
};

export const GET = async () => {
  try {
    await connect();
    const rides = await Ride.find().populate("driver", "name surname");
    return NextResponse.json(rides);
  } catch (error) {
    console.error("Error fetching rides:", error);
    return NextResponse.json(
      { message: "Error fetching rides", error: error.message },
      { status: 500 }
    );
  }
};
