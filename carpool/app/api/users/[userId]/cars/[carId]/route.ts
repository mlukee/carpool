import { NextRequest, NextResponse } from "next/server";

import { Types } from "mongoose";

import connect from "@/lib/db";
import Car from "@/models/car";
import User from "@/models/user";

export const DELETE = async (
  req: Request,
  context: { params: Promise<{ userId: string; carId: string }> }
) => {
  try {
    await connect();

    const { userId, carId } = await context.params;

    if (!userId) {
      return NextResponse.json(
        { message: "User ID is required" },
        { status: 400 }
      );
    }

    if (!carId) {
      return NextResponse.json(
        { message: "Car ID is required" },
        { status: 400 }
      );
    }

    const deletedCar = await Car.findByIdAndDelete(carId);

    if (!deletedCar) {
      return NextResponse.json({ message: "Car not found" }, { status: 404 });
    }

    const updatedUser = await User.findByIdAndUpdate(
      userId,
      { $pull: { cars: carId } },
      { new: true }
    );

    if (!updatedUser) {
      return NextResponse.json({ message: "User not found" }, { status: 404 });
    }

    return NextResponse.json({ status: 200 });
  } catch (error) {
    console.error("Error deleteing car from user:", error);
    return NextResponse.json(
      { message: "Error deleting car from user" },
      { status: 500 }
    );
  }
};

export const PATCH = async (
  req: Request,
  context: { params: Promise<{ carId: string; userId: string }> }
) => {
  const { carId, userId } = await context.params;
  try {
    const body = await req.json();
    const { carModel, year, licensePlate } = body;

    if (!userId) {
      return NextResponse.json("Missing ownerId", { status: 400 });
    }

    if (!Types.ObjectId.isValid(userId)) {
      return NextResponse.json("Invalid ownerId", { status: 401 });
    }

    if (!carId || !Types.ObjectId.isValid(carId)) {
      return NextResponse.json("Invalid carId", { status: 402 });
    }

    await connect();

    const user = await User.findById(userId);

    if (!user) {
      return NextResponse.json("User not found", { status: 404 });
    }

    const car = await Car.findOne({ _id: carId, owner: userId });

    if (!car) {
      return NextResponse.json("Car not found", { status: 404 });
    }

    const updatedCar = await Car.findByIdAndUpdate(
      carId,
      { carModel, year, licensePlate },
      { new: true }
    );

    return NextResponse.json(
      JSON.stringify({ message: "Car is updated", car: updatedCar }),
      { status: 200 }
    );
  } catch (error: unknown) {
    const errorMessage =
      error instanceof Error ? error.message : "Unknown error";
    return new NextResponse(`Error updating car ${errorMessage}`, {
      status: 500,
    });
  }
};
