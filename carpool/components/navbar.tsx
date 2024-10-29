import Link from "next/link";
import { Button } from "@/components/ui/button";
import { handleSignOut } from "@/app/actions/authActions";
import getSession from "@/lib/getSession";

export default async function Navbar() {
  const session = await getSession();
  return (
    <nav className="flex justify-between items-center py-3 px-4 bg-white shadow-md">
      <Link href="/" className="text-xl font-bold">
        Carpool
      </Link>
      <Link href="/addCar">Add Car</Link>
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
    </nav>
  );
}
