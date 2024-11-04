import { NextRequest, NextResponse } from "next/server";

import connect from "@/lib/db";
import User from "@/models/user";

export const GET = async (req: NextRequest) => {
  try {
    const { searchParams } = new URL(req.url);
    const userId = searchParams.get("userId");

    await connect();

    const user = await User.findById(userId);

    if (!user) {
      return new NextResponse("User not found", { status: 404 });
    }

    return new NextResponse(user, { status: 200 });
  } catch (error: unknown) {
    return new NextResponse(
      `Error when fetching users ${(error as Error).message}`,
      {
        status: 500,
      }
    );
  }
};

export const PATCH = async (
  req: Request,
  context: { params: Promise<{ userId: string }> }
) => {
  try {
    const { userId } = await context.params;

    if (!userId) {
      return new NextResponse("Missing userId", { status: 400 });
    }

    const body = await req.json();
    const { name, surname, username, email, phone } = body;

    await connect();

    //I dont want to get password and cars array from user

    const updatedUser = await User.findByIdAndUpdate(
      { _id: userId },
      { name, surname, username, email, phone },
      { new: true }
    );

    if (!updatedUser) {
      return NextResponse.json("User not found", { status: 404 });
    }

    return NextResponse.json(updatedUser, { status: 200 });
  } catch (error: unknown) {
    return new NextResponse(
      `Error when updating users ${(error as Error).message}`,
      {
        status: 500,
      }
    );
  }
};
