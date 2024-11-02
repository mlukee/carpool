import { NextRequest, NextResponse } from "next/server";

import connect from "@/lib/db";
import Car from "@/models/car";

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

    const cars = await Car.find({ owner: userId });

    if (!cars || cars.length === 0) {
      return NextResponse.json(
        { message: "No cars found for this user" },
        { status: 404 }
      );
    }

    return NextResponse.json(cars);
  } catch (error) {
    console.error("Error fetching cars:", error);
    return NextResponse.json(
      { message: "Error fetching cars" },
      { status: 500 }
    );
  }
};

export const DELETE = async (request: NextRequest) => {
  try {
  } catch (error) {
    console.error("Error deleting cars:", error);
    return NextResponse.json(
      { message: "Error deleting cars" },
      { status: 500 }
    );
  }
};
