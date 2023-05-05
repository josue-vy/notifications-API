import { Router } from "express";
import { methods as notificationsController } from "./../controllers/notifications.controller";
const router = Router();

router.get("/",notificationsController.getAllNotifications);
router.get("/:id",notificationsController.getOneNotifications);
router.post("/",notificationsController.addNotifications);

export default router;  