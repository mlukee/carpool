"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";

import { Loader2Icon, Pencil, Trash2 } from "lucide-react";
import { toast } from "sonner";

import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Ride } from "@/types/types";

import RideList from "./ride-list";

interface UserBookedRidesProps {
  userId: string;
}

export function UserBookedRides({ userId }: UserBookedRidesProps) {
  const [rides, setRides] = useState<Ride[]>([]);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const router = useRouter();

  useEffect(() => {
    if (!userId) return;

    const fetchRides = async () => {
      setIsLoading(true);
      try {
        const response = await fetch(`/api/users/${userId}/rides`);
        if (!response.ok) {
          throw new Error("Failed to fetch rides.");
        }
        const data = await response.json();
        setRides(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setIsLoading(false);
      }
    };

    fetchRides();
  }, [userId]);

  const handleUnbook = async (rideId: string) => {
    console.log("Unbooking ride:", rideId);

    try {
      const response = await fetch(`/api/users/${userId}/rides/${rideId}`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
      });

      if (!response.ok) {
        toast.error("Failed to unbook from a ride. Please try again.");
        return;
      }
      setRides(rides.filter((ride) => ride._id !== rideId));
      toast.success("Ride unbooked successfully.");
    } catch (error) {
      toast.error("Failed to unbook from a ride. Please try again.");
    }
  };
  return (
    <div className="w-full">
      {/* Table for larger screens */}
      <div className="hidden md:block">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Origin</TableHead>
              <TableHead className="hidden lg:table-cell">
                Destination
              </TableHead>
              <TableHead>Price</TableHead>
              <TableHead>Time</TableHead>
              <TableHead>Date</TableHead>
              <TableHead className="text-right">Actions</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {isLoading ? (
              <TableRow>
                <TableCell colSpan={4} className="text-center">
                  <Loader2Icon className="mx-auto h-4 w-4 animate-spin" />
                </TableCell>
              </TableRow>
            ) : (
              rides.map((ride) => (
                <TableRow key={ride._id}>
                  <TableCell>{ride.origin}</TableCell>
                  <TableCell className="hidden lg:table-cell">
                    {ride.destination}
                  </TableCell>
                  <TableCell>{ride.pricePerSeat} &euro;</TableCell>
                  <TableCell>{ride.departureTime}</TableCell>
                  <TableCell>
                    {new Date(ride.date).toLocaleDateString()}
                  </TableCell>
                  <TableCell className="text-right">
                    <div className="flex justify-end gap-1">
                      <AlertDialog>
                        <AlertDialogTrigger asChild>
                          <Button
                            variant="ghost"
                            size="icon"
                            className="text-destructive"
                          >
                            <Trash2 className="h-4 w-4" />
                            Unbook
                          </Button>
                        </AlertDialogTrigger>
                        <AlertDialogContent>
                          <AlertDialogHeader>
                            <AlertDialogTitle>Unbook Ride</AlertDialogTitle>
                            <AlertDialogDescription>
                              Are you sure you want to unbook from a ride? This
                              action cannot be undone.
                            </AlertDialogDescription>
                          </AlertDialogHeader>
                          <AlertDialogFooter>
                            <AlertDialogCancel>Cancel</AlertDialogCancel>
                            <AlertDialogAction
                              onClick={() => handleUnbook(ride._id)}
                              className="bg-destructive text-destructive-foreground hover:bg-destructive/90"
                            >
                              Unbook
                            </AlertDialogAction>
                          </AlertDialogFooter>
                        </AlertDialogContent>
                      </AlertDialog>
                    </div>
                  </TableCell>
                </TableRow>
              ))
            )}
          </TableBody>
        </Table>
      </div>

      {/* Card layout for mobile */}
      <div className="space-y-4 md:hidden">
        {isLoading && <Loader2Icon className="mx-auto h-4 w-4 animate-spin" />}
        {rides.map((ride) => (
          <Card key={ride._id}>
            <CardHeader>
              <CardTitle>
                {ride.origin}
                <span className="inline">→</span>
                {ride.destination}
              </CardTitle>
            </CardHeader>
            <CardContent>
              <p>
                <strong>Date:</strong>{" "}
                {new Date(ride.date).toLocaleDateString()}
              </p>
              <p>
                <strong>Time:</strong> {ride.departureTime}
              </p>
            </CardContent>
            <CardFooter className="flex justify-end gap-2">
              <AlertDialog>
                <AlertDialogTrigger asChild>
                  <Button
                    variant="ghost"
                    size="sm"
                    className="text-destructive"
                  >
                    <Trash2 className="mr-2 h-4 w-4" />
                    Unbook
                  </Button>
                </AlertDialogTrigger>
                <AlertDialogContent>
                  <AlertDialogHeader>
                    <AlertDialogTitle>Unbook Ride</AlertDialogTitle>
                    <AlertDialogDescription>
                      Are you sure you want to delete this car? This action
                      cannot be undone.
                    </AlertDialogDescription>
                  </AlertDialogHeader>
                  <AlertDialogFooter>
                    <AlertDialogCancel>Cancel</AlertDialogCancel>
                    <AlertDialogAction
                      onClick={() => handleUnbook(ride._id)}
                      className="bg-destructive text-destructive-foreground hover:bg-destructive/90"
                    >
                      Unbook
                    </AlertDialogAction>
                  </AlertDialogFooter>
                </AlertDialogContent>
              </AlertDialog>
            </CardFooter>
          </Card>
        ))}
      </div>

      {rides.length === 0 && (
        <div className="py-6 text-center">
          No booked rides found. Book your first ride{" "}
          <Link href="/find-ride">here</Link>.
        </div>
      )}
    </div>
  );
}
