import express from "express";
import morgan from "morgan";
// Routes
import notificationsRoutes from "./routes/notifications.routes";
import transactionsRoutes from "./routes/transactions.routes";

const app = express();

// Settings
app.set("port", 4000);

// Middlewares
app.use(morgan("dev"));
app.use(express.json());

// Routes
app.use("/api/notifications", notificationsRoutes);
app.use("/api/transactions", transactionsRoutes);

export default app;