import mongoose, { Schema, model, Document, Types } from "mongoose";

interface IRide extends Document {
  origin: string;
  destination: string;
  date: Date;
  departureTime: string;
  seatsAvailable: number;
  driver: Types.ObjectId;
  pricePerSeat: number;
  passengers: Types.ObjectId[];
  comments?: string;
  car: Types.ObjectId;
}

const RideSchema = new Schema<IRide>(
  {
    origin: {
      type: String,
      required: true,
    },
    destination: {
      type: String,
      required: true,
    },
    date: {
      type: Date,
      required: true,
    },
    departureTime: {
      type: String,
      required: true,
    },
    seatsAvailable: {
      type: Number,
      required: true,
      min: 1,
    },
    driver: {
      type: Schema.Types.ObjectId,
      ref: "User",
      required: true,
    },
    pricePerSeat: {
      type: Number,
      required: true,
      min: 0,
    },
    passengers: [
      {
        type: Schema.Types.ObjectId,
        ref: "User",
      },
    ],
    comments: {
      type: String,
    },
    car: {
      type: Schema.Types.ObjectId,
      ref: "Car",
      required: true,
    },
  },
  { timestamps: true }
);

const Ride = mongoose.models?.Ride || model<IRide>("Ride", RideSchema);
export default Ride;
