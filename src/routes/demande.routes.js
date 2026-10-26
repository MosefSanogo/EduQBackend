import express from "express";
import authMiddleware from "../middlewares/auth.middleware.js";

import {
    createDemande,
    getDemandesByProf,
    getDemandePdf,
    deleteDemande
} from "../controllers/demande.controller.js";
import upload from "../configs/upload.js";
import validate from "../middlewares/validate.middleware.js";
import demandeSchema from "../schemas/demande.schema.js";
const routerDemande = express.Router();


// Upload demande
routerDemande.post(
    "/upload",
    authMiddleware(),
    upload.single("pdf"),
    createDemande
);


// Liste des demandes
routerDemande.get(
    "/findAll/:id",
    authMiddleware(),
    validate(demandeSchema.demandeSchemaGetPdf),
    getDemandesByProf
);


// PDF
routerDemande.get(
    "/findPdf/:id",
    authMiddleware(),
    validate(demandeSchema.demandeSchemaGetPdf),
    getDemandePdf
);


// Suppression
routerDemande.delete(
    "/delete/:id",
    authMiddleware(),
    validate(demandeSchema.demandeSchemaGetPdf),
    deleteDemande
);

export default routerDemande;