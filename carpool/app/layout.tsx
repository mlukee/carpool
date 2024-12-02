import type { Metadata } from "next";
import { Inter } from "next/font/google";

import { ThemeProvider } from "next-themes";

import AppNavbar from "@/components/app-navbar";
import Providers from "@/components/providers";
import SessionWrapper from "@/components/session-wrapper";
import Sidebar from "@/components/sidebar";
import { Toaster } from "@/components/ui/sonner";

import "./globals.css";

export const metadata: Metadata = {
  title: "RideTogether - Affordable Carpooling",
  description: "Ride sharing and transport cost sharing app",
};

const inter = Inter({ subsets: ["latin"] });

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className="overflow-x-hidden">
        <ThemeProvider
          attribute="class"
          defaultTheme="dark"
          enableSystem
          disableTransitionOnChange
        >
          <SessionWrapper>
            <Providers>
              <div className="flex min-h-screen flex-col">
                <Sidebar />
                <div className="flex-1 p-3">
                  <main className="flex-1">{children}</main>
                </div>
                <footer className="mx-auto mb-1 items-center justify-center">
                  RideTogether © {new Date().getFullYear()}
                </footer>
              </div>
              <Toaster />
            </Providers>
          </SessionWrapper>
        </ThemeProvider>
      </body>
    </html>
  );
}
