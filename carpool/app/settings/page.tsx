"use client";
import { useCurrentUser } from "@/hooks/use-current-user";
import React from "react";

function Settings() {
  const user = useCurrentUser();
  return <div>{JSON.stringify(user)}</div>;
}

export default Settings;
