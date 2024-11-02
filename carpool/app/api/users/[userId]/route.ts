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
