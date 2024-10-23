import connect from "@/lib/db";
import User from "@/lib/models/user";
import { NextResponse } from "next/server";
import { Types } from "mongoose";

export const GET = async () => {
  try {
    await connect();
    const users = await User.find();

    return new NextResponse(JSON.stringify(users), { status: 200 });
  } catch (error: unknown) {
    return new NextResponse(
      "Error when fetching users " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
};

export const POST = async (req: Request) => {
  try {
    const body = await req.json();

    await connect();

    const user = new User(body);
    await user.save();

    return new NextResponse(
      JSON.stringify({ message: "User is created", user: user }),
      { status: 200 }
    );
  } catch (error: unknown) {
    return new NextResponse(
      "Error when adding user " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
};

export const PATCH = async (req: Request) => {
  try {
    const body = await req.json();
    const { userId, newUserName } = body;

    await connect();

    if (!userId || !newUserName) {
      return new NextResponse(
        JSON.stringify({ message: "userId and newUserName are required" }),
        { status: 400 }
      );
    }

    if (!Types.ObjectId.isValid(userId)) {
      return new NextResponse(JSON.stringify({ message: "Invalid userId" }), {
        status: 401,
      });
    }

    const updatedUser = await User.findByIdAndUpdate(
      { _id: userId },
      { name: newUserName },
      { new: true }
    );

    if (!updatedUser) {
      return new NextResponse(
        JSON.stringify({ message: "User not found in the database" }),
        { status: 402 }
      );
    }

    return new NextResponse(
      JSON.stringify({ message: "User is updated", user: updatedUser }),
      { status: 200 }
    );
  } catch (error: unknown) {
    return new NextResponse(
      "Error when updating user " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
};

export const DELETE = async (req: Request) => {
  try {
    const { searchParams } = new URL(req.url);
    const userId = searchParams.get("userId");

    if (!userId) {
      return new NextResponse(
        JSON.stringify({ message: "userId is required" }),
        { status: 400 }
      );
    }

    if (!Types.ObjectId.isValid(userId)) {
      return new NextResponse(JSON.stringify({ message: "Invalid userId" }), {
        status: 401,
      });
    }

    await connect();

    const deletedUser = await User.findByIdAndDelete(
      new Types.ObjectId(userId)
    );

    if (!deletedUser) {
      return new NextResponse(
        JSON.stringify({ message: "User not found in the database" }),
        { status: 402 }
      );
    }

    return new NextResponse(
      JSON.stringify({ message: "User is deleted", user: deletedUser }),
      { status: 200 }
    );
  } catch (error: unknown) {
    return new NextResponse(
      "Error when deleting user " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
};
