import mongoose, { Schema, model, Document, Types } from "mongoose";

interface IUser extends Document {
  _id: Types.ObjectId;
  username: string;
  name: string;
  surname: string;
  email: string;
  password: string;
  phone: string;
  cars: Types.ObjectId[];
}

const UserSchema = new Schema<IUser>(
  {
    username: {
      type: String,
      required: true,
      unique: true,
    },
    name: {
      type: String,
      required: true,
    },
    surname: {
      type: String,
      required: true,
    },
    email: {
      type: String,
      required: true,
      unique: true,
    },
    password: {
      type: String,
      required: true,
    },
    phone: {
      type: String,
      required: true,
    },
    cars: [
      {
        type: Schema.Types.ObjectId,
        ref: "Car",
      },
    ],
  },
  { timestamps: true }
);

const User = mongoose.models.User || model<IUser>("User", UserSchema);

export default User;
