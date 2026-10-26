import express from "express";
import * as noteController from "../controllers/note.controller.js";
import authMiddleware from "../middlewares/auth.middleware.js";
import validate from "../middlewares/validate.middleware.js";
import studentSchema from "../schemas/student.schema.js";
import { createCompoSchema } from "../schemas/compo.schema.js";
import { createNotesSchema } from "../schemas/note.schema.js";
const routerNotes = express.Router();

/**
 * @route   POST /api/notes/create
 * @desc    Créer ou enregistrer de nouvelles notes pour les étudiants
 * @access  Privé (Enseignants / Administrateurs)
 */
routerNotes.post(
    "/create",
    authMiddleware(), // Décommenter si la route nécessite un jeton d'authentification
    validate(createNotesSchema),
    noteController.createNotes
);

/**
 * @route   POST /api/notes/createCompo
 * @desc    Créer ou enregistrer de nouvelles notes de composition pour les étudiants
 * @access  Privé (Enseignants / Administrateurs)
 */
routerNotes.post(
    "/createCompo",
    authMiddleware(), // Décommenter si la route nécessite un jeton d'authentification
    validate(createCompoSchema),
    noteController.createCompo
);


/**
 * @route   GET /api/notes/findAllNotes/:id/:an/:idc
 * @desc    Récupérer toutes les notes d'un étudiant spécifique
 * @param   {string} id  - Identifiant de l'étudiant
 * @param   {string} an  - Année académique (ex: 2025-2026)
 * @param   {string} idc - Identifiant de la classe ou du cours
 * @access  Privé / Public
 */
routerNotes.get(
    "/findAllNotes/:id/:an/:idc",
    authMiddleware(),
    validate(studentSchema.studentSchemaNote),
    noteController.getStudentNotes
);
/**
 * @route   GET /api/notes/findAllComp/:id/:an/:idc
 * @desc    Récupérer toutes les compositions d'un étudiant spécifique
 * @param   {string} id  - Identifiant de l'étudiant
 * @param   {string} an  - Année académique (ex: 2025-2026)
 * @param   {string} idc - Identifiant de la classe ou du cours
 * @access  Privé / Public
 */
routerNotes.get(
    "/findAllComp/:id/:an/:idc",
    authMiddleware(),
    validate(studentSchema.studentSchemaNote),
    noteController.getStudentCompo
);
/**
 * @route   POST /api/notes/updateNote
 * @desc    Mettre à jour une note spécifique pour un étudiant
 * @body    { number } note - Nouvelle valeur de la note
 * @body    { string } id   - Identifiant de la note à mettre à jour
 * @access  Privé (Enseignants / Administrateurs)
 */
routerNotes.post(
    "/updateNote",
    authMiddleware(),
    validate(studentSchema.studentSchemaNoteUpdate),
    noteController.updateNote
);
/**
 * @route   POST /api/notes/updateCompo
 * @desc    Mettre à jour une composition spécifique pour un étudiant
 * @body    { number } note - Nouvelle valeur de la composition
 * @body    { string } id   - Identifiant de la composition à mettre à jour
 * @access  Privé (Enseignants / Administrateurs)
 */
routerNotes.post(
    "/updateCompo",
     authMiddleware(),
    validate(studentSchema.studentSchemaNoteUpdate),
    noteController.updateCompo
);

export default routerNotes;