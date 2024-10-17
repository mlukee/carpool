import { ObjectId } from "mongodb";

export interface Car {
  carId: ObjectId;
  model: string;
  year: number;
  licensePlate: string;
}

export interface User {
  userId: ObjectId;
  username: string;
  name: string;
  surname: string;
  email: string;
  password: string;
  phone: string;
  cars: Car[];
}

export interface Ride {
  rideId: ObjectId;
  origin: string;
  destination: string;
  date: Date;
  departureTime: string;
  seatsAvailable: number;
  pricePerSeat: number;
  driver: User;
  passengers: User[];
  comments?: string;
  status: "active" | "cancelled" | "completed";
}

export interface Feedback {
  feedbackId: ObjectId;
  rideId: ObjectId;
  userId: ObjectId;
  rating: number;
  comment: string;
  date: Date;
}
