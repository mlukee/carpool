"use client";

import React from "react";

import {
  Link,
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  NavbarMenu,
  NavbarMenuItem,
  NavbarMenuToggle,
} from "@nextui-org/react";
import { Car } from "lucide-react";
import { useSession } from "next-auth/react";

import { Button } from "@/components/ui/button";

import AuthButton from "./auth-button";
import { ThemeToggle } from "./theme-toggle";

export default function AppNavbar() {
  const [isMenuOpen, setIsMenuOpen] = React.useState(false);
  const { status } = useSession();

  const menuItems = [
    {
      label: "Find a Ride",
      href: "/find-ride",
    },
  ];

  if (status == "authenticated") {
    menuItems.push(
      {
        label: "Home",
        href: "/",
      },
      {
        label: "Profile",
        href: "/profile",
      },
      {
        label: "Add Ride",
        href: "/add-ride",
      }
    );
  }

  return (
    <Navbar onMenuOpenChange={setIsMenuOpen}>
      <NavbarContent>
        <NavbarMenuToggle
          aria-label={isMenuOpen ? "Close menu" : "Open menu"}
          className="sm:hidden"
        />
        <NavbarBrand>
          <p className="font-bold text-inherit">
            <Link href="/">
              <Car className="mr-2" />
              Carpool
            </Link>
          </p>
        </NavbarBrand>
      </NavbarContent>

      <NavbarContent className="hidden gap-4 sm:flex" justify="center">
        {menuItems.map((item, index) => (
          <NavbarItem key={`${item}-${index}`}>
            <Button asChild variant={"link"}>
              <Link className="w-full" href={item.href} size="lg">
                {item.label}
              </Link>
            </Button>
          </NavbarItem>
        ))}
        <NavbarItem>
          <AuthButton />
        </NavbarItem>
        <NavbarItem>
          <ThemeToggle />
        </NavbarItem>
      </NavbarContent>
      <NavbarMenu>
        {menuItems.map((item, index) => (
          <NavbarMenuItem key={`${item}-${index}`}>
            <Link className="w-full" href={item.href} size="lg">
              {item.label}
            </Link>
          </NavbarMenuItem>
        ))}
        <NavbarMenuItem>
          <AuthButton />
        </NavbarMenuItem>
      </NavbarMenu>
    </Navbar>
  );
}
