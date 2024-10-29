import Link from "next/link";
import { Button } from "@/components/ui/button";
import { handleSignOut } from "@/app/actions/authActions";
import getSession from "@/lib/getSession";
import { ThemeToggle } from "@/components/theme-toggle";

export default async function Navbar() {
  const session = await getSession();
  return (
    <nav className=" flex justify-between items-center py-3 px-4 shadow-md">
      <Link href="/" className="text-xl font-bold">
        Carpool
      </Link>
      <Button asChild>
        <Link href="/add-ride">Add Ride</Link>
      </Button>
      <Button asChild>
        <Link href="/addCar">Add Car</Link>
      </Button>

      {!session ? (
        <Link href="/auth/signin">
          <Button variant="default">Sign In</Button>
        </Link>
      ) : (
        <form action={handleSignOut}>
          <Button variant="default" type="submit">
            Sign Out
          </Button>
        </form>
      )}
      <ThemeToggle />
    </nav>
  );
}
