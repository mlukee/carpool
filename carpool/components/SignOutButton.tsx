"use client";
import React from "react";
import { Button } from "./ui/button";
import { signOut } from "@/auth";

export const SignOutButton = () => {
  const clickHandler = async () => {
    await signOut();
  };
  return (
    <>
      <form action={clickHandler}>
        <Button onClick={clickHandler}>Sign out</Button>
      </form>
    </>
  );
};
