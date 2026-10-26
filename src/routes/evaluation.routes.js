import express from "express";
import * as evaluationController from "../controllers/evaluation.controller.js";
import authMiddleware from "../middlewares/auth.middleware.js";
import validate from "../middlewares/validate.middleware.js";
import evaluationSchema from "../schemas/evaluation.schema.js";
const routerEval = express.Router();

/**
 * @route   GET /api/evaluations/getAll/:an/:id
 * @desc    Récupérer toutes les évaluations d'une année académique spécifique
 * @param   {string} an - Année académique (ex: 2025-2026)
 * @param   {string} id - Identifiant du professeur
 * @access  Privé
 */
routerEval.get(
    "/getAll/:an/:id",
    authMiddleware(),
    validate(evaluationSchema.evaluationSchemaGet),
    evaluationController.getEvaluations
);

/**
 * @route   GET /api/evaluations/limit/:an/:id
 * @desc    Récupérer les évaluations les plus récentes (version limitée)
 * @param   {string} an - Année académique
 * @param   {string} id - Identifiant du professeur
 * @access  Privé
 */
routerEval.get(
    "/limit/:an/:id",
    authMiddleware(),
    validate(evaluationSchema.evaluationSchemaGet),
    evaluationController.getEvaluationsLimit
);

/**
 * @route   GET /api/evaluations/all/:id
 * @desc    Récupérer l'historique global de toutes les évaluations d'un entité
 * @param   {string} id - Identifiant du professeur
 * @access  Privé
 */
routerEval.get(
    "/all/:id",
    authMiddleware(),
    validate(evaluationSchema.evaluationSchemaGetById),
    evaluationController.getAllEvaluations
);

/**
 * @route   POST /api/evaluations/create
 * @desc    Créer et enregistrer une nouvelle évaluation
 * @access  Privé (Enseignants / Admin)
 */
routerEval.post(
    "/create",
    authMiddleware(),
    validate(evaluationSchema.evaluationSchemaCreate),
    evaluationController.createEvaluation
);

routerEval.delete(
    "/delete/:id",
    authMiddleware(),
    evaluationController.deleteEvaluation
);

export default routerEval;