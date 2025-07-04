"use client";

import { useRouter } from "next/navigation";

import { NextUIProvider } from "@nextui-org/react";

export default function Providers({ children }: { children: React.ReactNode }) {
  const router = useRouter();

  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  return <NextUIProvider navigate={router.push}>{children}</NextUIProvider>;
}
