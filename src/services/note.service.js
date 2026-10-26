import * as noteModel from "../models/note.model.js";
import * as evalModel from "../models/evaluation.model.js";
import * as affectModel from "../models/affectation.model.js";

export const createNotes = async ({ eleves, idE, idP }) => {
  // 1. Récupérer l'évaluation depuis la BDD
  const evaluation = await evalModel.getEvaluation(idE);

  if (!evaluation) {
    const error = new Error("Évaluation introuvable");
    error.status = 404;
    throw error;
  }

  // 2. Vérifier que le professeur est affecté
  // à la classe ET à la matière de cette évaluation
  const authorized = await affectModel.checkAffectation({
    idP,
    idC: evaluation.classe,
    idM: evaluation.matiere,
  });

  if (!authorized) {
    const error = new Error(
      "Vous n'êtes pas autorisé à gérer cette évaluation",
    );

    error.status = 403;
    throw error;
  }

  // 3. Construire les données à enregistrer
  // On utilise les informations de l'évaluation,
  // PAS celles envoyées par le frontend.
  const values = eleves.map((eleve) => [
    eleve.id * 1,
    eleve.prenom,
    eleve.nom,
    eleve.note * 1,
    evaluation.matiere,
    evaluation.annee,
    evaluation.classe,
    idE * 1,
  ]);

  // 4. Enregistrer
  return await noteModel.createNotes(values);
};

export const getStudentNotes = async (idE, an, idC) => {
  // 1. Insérer les notes manquantes pour l'élève
  await noteModel.insertMissingNotes(idE, an, idC);

  // 2. Récupérer toutes les notes
  const notes = await noteModel.getStudentNotes(idE, an, idC);

  return notes;
};

export const updateNote = async (id, note) => {
  return await noteModel.updateNote(id, note);
};

export const updateCompo = async (id, note) => {
  return await noteModel.updateCompo(id, note);
};

export const getStudentComp = async (idE, an, idC) => {
  return await noteModel.getStudentCompo(idE, an, idC);
};

export const createCompo = async (eleves, idC, mat, an, idE) => {
  if (!Array.isArray(eleves) || eleves?.length === 0) {
    return {
      success: false,
      message: "Données des élèves invalides ou manquantes.",
    };
  }

  const check = await noteModel.checkIfCompoExists(idE, mat, idC, an);
  if (check) {
    return {
      success: false,
      message: "La composition existe déjà pour cette évaluation.",
    };
  }

  const values = eleves.map((d) => [
    d.id * 1, // id de l'élève
    idC * 1, // id de la classe
    mat, // matière
    d.note * 1, // note
    an, // année scolaire
    idE * 1, // id de l'évaluation
  ]);
  const result = await noteModel.createCompo(values);
  if (result.affectedRows > 0) {
    return {
      success: true,
      message: "La composition a été créée avec succès.",
    };
  }
};
