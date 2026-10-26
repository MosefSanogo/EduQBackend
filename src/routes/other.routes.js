import express from "express";
import authMiddleware from "../middlewares/auth.middleware.js";
import validate from "../middlewares/validate.middleware.js";
import {
    getPeriodes,
    createAbsences,
    getNiveaux,
    getExamens,
    getProfPaiements
} from "../controllers/other.controller.js";
import { createAbsecenceSchema } from "../schemas/other.schema.js";

const routerOther = express.Router();


// Périodes
routerOther.get(
    "/periode",
    authMiddleware(),
    getPeriodes
);


// Absences
routerOther.post(
    "/absences",
     authMiddleware(),
    validate(createAbsecenceSchema),
    createAbsences
);


// Niveaux
routerOther.get(
    "/niveau",
    authMiddleware(),
    getNiveaux
);


// Examens
routerOther.get(
    "/examen/:niveau/:periode",
     authMiddleware(),
    getExamens
);

routerOther.get(
    "/paiements/:idP",
    authMiddleware(),
    getProfPaiements
);

export default routerOther;