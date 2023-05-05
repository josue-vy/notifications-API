import { Router } from "express";
import { methods as transactionsController } from "./../controllers/transactions.controller";
const router = Router();

router.post("/",transactionsController.addTransaccion);
router.get("/",transactionsController.getAllTransactions);
export default router;  