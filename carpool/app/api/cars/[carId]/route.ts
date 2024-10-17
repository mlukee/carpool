import connect from "@/lib/db";
import Car from "@/lib/models/car";
import { NextResponse } from "next/server";
import { Types } from "mongoose";
import User from "@/lib/models/user";

export const PATCH = async (
  req: Request,
  context: { params: { carId: string } }
) => {
  const { carId } = context.params;
  try {
    const body = await req.json();
    const { newCarModel } = body;

    const { searchParams } = new URL(req.url);
    const ownerId = searchParams.get("ownerId");

    if (!ownerId) {
      return new NextResponse("Missing ownerId", { status: 400 });
    }

    if (!Types.ObjectId.isValid(ownerId)) {
      return new NextResponse("Invalid ownerId", { status: 401 });
    }

    if (!carId || !Types.ObjectId.isValid(carId)) {
      return new NextResponse("Invalid carId", { status: 402 });
    }

    await connect();

    const user = await User.findById(ownerId);

    if (!user) {
      return new NextResponse("User not found", { status: 404 });
    }

    const car = await Car.findOne({ _id: carId, owner: ownerId });

    if (!car) {
      return new NextResponse("Car not found", { status: 404 });
    }

    const updatedCar = await Car.findByIdAndUpdate(
      carId,
      { carModel: newCarModel },
      { new: true }
    );

    return new NextResponse(
      JSON.stringify({ message: "Car is updated", car: updatedCar }),
      { status: 200 }
    );
  } catch (error: unknown) {
    const errorMessage =
      error instanceof Error ? error.message : "Unknown error";
    return new NextResponse("Error updating car " + errorMessage, {
      status: 500,
    });
  }
};

export const DELETE = async (
  req: Request,
  context: { params: { carId: string } }
) => {
  const { carId } = context.params;
  try {
    const { searchParams } = new URL(req.url);
    const ownerId = searchParams.get("ownerId");

    if (!ownerId) {
      return new NextResponse("Missing ownerId", { status: 400 });
    }

    if (!Types.ObjectId.isValid(ownerId)) {
      return new NextResponse("Invalid ownerId", { status: 401 });
    }

    if (!carId || !Types.ObjectId.isValid(carId)) {
      return new NextResponse("Invalid carId", { status: 402 });
    }

    await connect();

    const user = await User.findById(ownerId);

    if (!user) {
      return new NextResponse("User not found", { status: 404 });
    }

    const car = await Car.findOne({ _id: carId, owner: ownerId });

    if (!car) {
      return new NextResponse("Car not found", { status: 404 });
    }

    await Car.findByIdAndDelete(carId);

    return new NextResponse(
      JSON.stringify({ message: "Car is deleted", car: car }),
      { status: 200 }
    );
  } catch (error: unknown) {
    const errorMessage =
      error instanceof Error ? error.message : "Unknown error";
    return new NextResponse("Error deleting car " + errorMessage, {
      status: 500,
    });
  }
};
