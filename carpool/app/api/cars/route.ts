import connect from "@/lib/db";
import Car from "@/lib/models/car";
import { NextResponse } from "next/server";
import { Types } from "mongoose";
import User from "@/lib/models/user";

export const GET = async (req: Request) => {
  try {
    const { searchParams } = new URL(req.url);
    const ownerId = searchParams.get("ownerId");

    if (!ownerId) {
      return new NextResponse("Missing ownerId", { status: 400 });
    }

    if (!Types.ObjectId.isValid(ownerId)) {
      return new NextResponse("Invalid ownerId", { status: 401 });
    }

    await connect();

    const user = await User.findById(ownerId);

    if (!user) {
      return new NextResponse("User not found", { status: 404 });
    }

    const cars = await Car.find({ owner: new Types.ObjectId(ownerId) });

    return new NextResponse(JSON.stringify(cars), { status: 200 });
  } catch (error: unknown) {
    return new NextResponse(
      "Error when fetching cars " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
};

export const POST = async (req: Request) => {
  try {
    const { searchParams } = new URL(req.url);
    const ownerId = searchParams.get("ownerId");
    const { carModel, year, licensePlate } = await req.json();

    if (!ownerId) {
      return new NextResponse("Missing ownerId", { status: 400 });
    }

    if (!Types.ObjectId.isValid(ownerId)) {
      return new NextResponse("Invalid ownerId", { status: 401 });
    }

    await connect();

    const user = await User.findById(ownerId);

    if (!user) {
      return new NextResponse("User not found", { status: 404 });
    }

    const newCar = new Car({
      carModel,
      year,
      licensePlate,
      owner: new Types.ObjectId(ownerId),
    });

    await newCar.save();

    return new NextResponse(
      JSON.stringify({ message: "Car added successfully", car: newCar }),
      { status: 200 }
    );
  } catch (error: unknown) {
    return new NextResponse(
      "Error when adding car " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
};
