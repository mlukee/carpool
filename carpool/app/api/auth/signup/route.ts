import { NextResponse } from "next/server";

import bcrypt from "bcryptjs";

import connect from "@/lib/db";
import User from "@/models/user";

export async function POST(request: Request) {
  const { username, name, surname, email, password, phone } =
    await request.json();

  await connect();

  try {
    const exsitingUser = await User.findOne({ email });
    if (exsitingUser) {
      {
        return NextResponse.json(
          { message: "User already exists" },
          { status: 400 }
        );
      }
    }

    const hashedPassword = await bcrypt.hash(password, 12);

    const user = new User({
      username,
      name,
      surname,
      email,
      password: hashedPassword,
      phone,
    });

    await user.save();

    return NextResponse.json(
      { message: "User created successfully" },
      { status: 201 }
    );
  } catch (error: unknown) {
    return new NextResponse(
      `Something went wrong ${(error as Error).message}`,
      {
        status: 500,
      }
    );
  }
}
