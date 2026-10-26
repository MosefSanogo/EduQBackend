import express from "express";

import * as affectationController
    from "../controllers/affectation.controller.js";

import authMiddleware
    from "../middlewares/auth.middleware.js";
import validate from "../middlewares/validate.middleware.js";
import affectationSchema from "../schemas/affectation.schema.js";

const routerAffect = express.Router();


// Toutes les affectations d'un professeur
routerAffect.get(
    "/findAll/:id",
    authMiddleware(),
    validate(affectationSchema.affectationSchemaGet),
    affectationController.getAffectations
);


// Affectations par classe
routerAffect.get(
    "/findByClasse/:id/:idc",
    authMiddleware(),
    validate(affectationSchema.affectationSchemaClass),
    affectationController.getAffectationsByClasse
);


// Affectations par niveau
routerAffect.get(
    "/findByNiveau/:id/:niveau",
    authMiddleware(),
    validate(affectationSchema.affectationSchemaNiveau),
    affectationController.getAffectationsByNiveau
);

export default routerAffect;