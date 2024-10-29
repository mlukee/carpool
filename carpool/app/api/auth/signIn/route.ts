import { NextResponse } from "next/server";
import User from "@/models/user";
import connect from "@/lib/db";
import bcrypt from "bcryptjs";

export async function POST(request: Request) {
  const { email, password } = await request.json();

  await connect();

  try {
    const exsitingUser = await User.findOne({ email });
    if (!exsitingUser) {
      return new NextResponse("User not found", { status: 404 });
    }

    const checkPasswd = await bcrypt.compare(password, exsitingUser.password);

    if (!checkPasswd) {
      return new NextResponse("Invalid credentials", { status: 401 });
    }

    return;
  } catch (error: unknown) {
    return new NextResponse(
      "Something went wrong " + (error as Error).message,
      {
        status: 500,
      }
    );
  }
}
