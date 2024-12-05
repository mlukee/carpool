"use client";

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
import { Car } from "@/types/types";

interface UserCarsProps {
  userId: string;
}

export function UserCars({ userId }: UserCarsProps) {
  const [cars, setCars] = useState<Car[]>([]);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const router = useRouter();

  useEffect(() => {
    if (!userId) return;

    const fetchCars = async () => {
      setIsLoading(true);
      try {
        const response = await fetch(`/api/users/${userId}/cars`);
        if (!response.ok) {
          throw new Error("Failed to fetch cars.");
        }
        const data = await response.json();
        setCars(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setIsLoading(false);
      }
    };

    fetchCars();
  }, [userId]);

  const handleDelete = async (carId: string) => {
    console.log("Deleting car:", carId);

    try {
      const response = await fetch(`/api/users/${userId}/cars/${carId}`, {
        method: "DELETE",
        headers: {
          "Content-Type": "application/json",
        },
      });

      if (!response.ok) {
        toast.error("Failed to delete car. Please try again.");
        return;
      }
      setCars(cars.filter((car) => car._id !== carId));
    } catch (error) {}
  };

  const handleEdit = (car: Car) => {
    router.push(
      `/add-car?carId=${car._id}&carModel=${car.carModel}&year=${car.year}&licensePlate=${car.licensePlate}`
    );
  };

  return (
    <div className="w-full">
      {/* Table for larger screens */}
      <div className="hidden md:block">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Year</TableHead>
              <TableHead className="hidden lg:table-cell">Model</TableHead>
              <TableHead>License Plate</TableHead>
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
              cars.map((car) => (
                <TableRow key={car._id}>
                  <TableCell>{car.year}</TableCell>
                  <TableCell className="hidden lg:table-cell">
                    {car.carModel}
                  </TableCell>
                  <TableCell>{car.licensePlate}</TableCell>
                  <TableCell className="text-right">
                    <div className="flex justify-end gap-2">
                      <Button
                        variant="ghost"
                        size="icon"
                        onClick={() => handleEdit(car)}
                      >
                        <Pencil className="h-4 w-4" />
                      </Button>
                      <AlertDialog>
                        <AlertDialogTrigger asChild>
                          <Button
                            variant="ghost"
                            size="icon"
                            className="text-destructive"
                          >
                            <Trash2 className="h-4 w-4" />
                          </Button>
                        </AlertDialogTrigger>
                        <AlertDialogContent>
                          <AlertDialogHeader>
                            <AlertDialogTitle>Delete Car</AlertDialogTitle>
                            <AlertDialogDescription>
                              Are you sure you want to delete this car? This
                              action cannot be undone.
                            </AlertDialogDescription>
                          </AlertDialogHeader>
                          <AlertDialogFooter>
                            <AlertDialogCancel>Cancel</AlertDialogCancel>
                            <AlertDialogAction
                              onClick={() => handleDelete(car._id)}
                              className="bg-destructive text-destructive-foreground hover:bg-destructive/90"
                            >
                              Delete
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
        {cars.map((car) => (
          <Card key={car._id}>
            <CardHeader>
              <CardTitle>{car.year}</CardTitle>
            </CardHeader>
            <CardContent>
              <p>
                <strong>Year:</strong> {car.carModel}
              </p>
              <p>
                <strong>License Plate:</strong> {car.licensePlate}
              </p>
            </CardContent>
            <CardFooter className="flex justify-end gap-2">
              <Button variant="ghost" size="sm" onClick={() => handleEdit(car)}>
                <Pencil className="mr-2 h-4 w-4" />
                Edit
              </Button>
              <AlertDialog>
                <AlertDialogTrigger asChild>
                  <Button
                    variant="ghost"
                    size="sm"
                    className="text-destructive"
                  >
                    <Trash2 className="mr-2 h-4 w-4" />
                    Delete
                  </Button>
                </AlertDialogTrigger>
                <AlertDialogContent>
                  <AlertDialogHeader>
                    <AlertDialogTitle>Delete Car</AlertDialogTitle>
                    <AlertDialogDescription>
                      Are you sure you want to delete this car? This action
                      cannot be undone.
                    </AlertDialogDescription>
                  </AlertDialogHeader>
                  <AlertDialogFooter>
                    <AlertDialogCancel>Cancel</AlertDialogCancel>
                    <AlertDialogAction
                      onClick={() => handleDelete(car._id)}
                      className="bg-destructive text-destructive-foreground hover:bg-destructive/90"
                    >
                      Delete
                    </AlertDialogAction>
                  </AlertDialogFooter>
                </AlertDialogContent>
              </AlertDialog>
            </CardFooter>
          </Card>
        ))}
      </div>

      {cars.length === 0 && (
        <div className="py-6 text-center">
          No cars found. Add your first car to get started.
        </div>
      )}
    </div>
  );
}
