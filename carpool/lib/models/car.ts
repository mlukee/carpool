import { Schema, model, models } from "mongoose";

const CarSchema = new Schema(
  {
    carModel: {
      type: String,
      required: true,
    },
    year: {
      type: Number,
      required: true,
    },
    licensePlate: {
      type: String,
      required: true,
    },
    owner: {
      type: Schema.Types.ObjectId,
      ref: "User",
    },
  },
  { timestamps: true }
);

const Car = models.Car || model("Car", CarSchema);

export default Car;
