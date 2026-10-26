import express from "express";
import emploiController from "../controllers/emploi.controller.js";
import authMiddleware from "../middlewares/auth.middleware.js";
const routerEmploi = express.Router();

routerEmploi.get('/planning/:id/:an',
    authMiddleware(),
    emploiController.getEmploi
)

routerEmploi.get('/today/planning/:id/:an',
    authMiddleware(),
    emploiController.getTodayEmploi
)

export default routerEmploi