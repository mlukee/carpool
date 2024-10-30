import Link from "next/link";

import { useSession } from "next-auth/react";

import { handleSignOut } from "@/app/actions/auth-actions";
import { Button } from "@/components/ui/button";

export default function AuthButton() {
  const { data: session } = useSession();

  const logOut = async () => {
    await handleSignOut();
    location.reload();
  };
  return !session ? (
    <Link href="/auth/signin">
      <Button variant="default">Sign In</Button>
    </Link>
  ) : (
    <Button onClick={logOut} variant="default" type="submit">
      Sign Out
    </Button>
  );
}
