export interface Car {
  _id: string;
  carModel: string;
  year: number;
  licensePlate: string;
  owner: string;
}

export interface User {
  userId: string;
  username: string;
  name: string;
  surname: string;
  email: string;
  password: string;
  phone: string;
}

export interface Ride {
  rideId: string;
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
  feedbackId: string;
  rideId: string;
  userId: string;
  rating: number;
  comment: string;
  date: Date;
}
