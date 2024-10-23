import { Schema, model, Document, Types } from "mongoose";

interface IFeedback extends Document {
  rating: number;
  comments?: string;
  ride: Types.ObjectId;
  user: Types.ObjectId;
}

const FeedbackSchema = new Schema<IFeedback>(
  {
    rating: {
      type: Number,
      required: true,
      min: 1,
      max: 5,
    },
    comments: {
      type: String,
    },
    ride: {
      type: Schema.Types.ObjectId,
      ref: "Ride",
      required: true,
    },
    user: {
      type: Schema.Types.ObjectId,
      ref: "User",
      required: true,
    },
  },
  { timestamps: true }
);

export default model<IFeedback>("Feedback", FeedbackSchema);
