import Link from "next/link";

import { Car, Home, Menu, Plus, User } from "lucide-react";
import { useSession } from "next-auth/react";

import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";

import AuthButton from "./auth-button";
import { ThemeToggle } from "./theme-toggle";
import { Button } from "./ui/button";

const Sidebar = () => {
  return (
    <div className="relative ml-auto p-2">
      <Sheet>
        <SheetTrigger asChild>
          <Button variant="outline" size="icon">
            <Menu className="h-[1.2rem] w-[1.2rem]" />
            <span className="sr-only">Toggle navigation</span>
          </Button>
        </SheetTrigger>
        <SheetContent>
          <SheetHeader>
            <SheetTitle className="flex justify-between px-2">
              Menu
              <ThemeToggle />
            </SheetTitle>
            <hr />
            <div className="flex flex-col gap-2">
              <Link href="/add-ride" className="flex items-center gap-2">
                <Plus /> Add Rides
              </Link>
              <Link href="/find-ride" className="flex items-center gap-2">
                <Car /> Find Rides
              </Link>
              <Link href="/" className="flex items-center gap-2">
                <Home /> Home
              </Link>
              <Link href="/profile" className="flex items-center gap-2">
                <User /> Profile
              </Link>
              <AuthButton />
            </div>
          </SheetHeader>
        </SheetContent>
      </Sheet>
    </div>
  );
};

export default Sidebar;
