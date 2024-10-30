import mongoose, { Document, Schema, Types, model } from "mongoose";

interface ICar extends Document {
  _id: Types.ObjectId;
  carModel: string;
  year: number;
  licensePlate: string;
  owner: Types.ObjectId;
}

const CarSchema = new Schema<ICar>(
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
      required: true,
    },
  },
  { timestamps: true }
);

const Car = mongoose.models?.Car || model<ICar>("Car", CarSchema);
export default Car;
