"use client";

import React from "react";

import { useCurrentUser } from "@/hooks/use-current-user";

function Settings() {
  const user = useCurrentUser();
  return <div>{JSON.stringify(user)}</div>;
}

export default Settings;
