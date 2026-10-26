import db from "../configs/db.js";

export const getEvaluation = async (idE) => {
  const sql = `
        SELECT
            id,
            classe,
            matiere,
            annee
        FROM evaluation
        WHERE id = ?
    `;

  const [results] = await db.query(sql, [idE]);

  return results[0] || null;
};

export const getEvaluations = async (annee, idP) => {
  const sql = `
        SELECT 
            e.id,
            e.periode,
            c.nom,
            e.classe,
            e.matiere,
            e.lib,
            e.note,
            e.date,
            e.affiche,
            e.annee
        FROM evaluation e
        INNER JOIN classe c ON c.id = e.classe
        WHERE e.annee = ?
        AND e.id NOT IN (
            SELECT eval FROM note
        )
        AND e.classe IN (
            SELECT idC FROM affectation WHERE idP = ?
        )
        ORDER BY e.id DESC
    `;

  const [results] = await db.query(sql, [annee, idP]);

  return results;
};

export const getEvaluationsLimit = async (annee, idP) => {
  const sql = `
        SELECT 
            e.id,
            e.periode,
            c.nom,
            e.classe,
            e.matiere,
            e.lib,
            e.note,
            e.date,
            e.affiche,
            e.annee
        FROM evaluation e
        INNER JOIN classe c ON c.id = e.classe
        INNER JOIN affectation a
        ON a.idC = e.classe
        AND a.idM = e.matiere
        WHERE e.annee = ? AND a.idP = ?
        ORDER BY e.id DESC
        LIMIT 5
    `;

  const [results] = await db.query(sql, [annee, idP]);

  return results;
};

export const getAllEvaluations = async (idP) => {
  const sql = `
    SELECT 
        e.id,
        e.periode,
        c.nom,
        e.classe,
        e.matiere,
        e.lib,
        e.note,
        e.date,
        e.affiche,
        e.annee
    FROM evaluation e
    INNER JOIN classe c 
        ON c.id = e.classe
    INNER JOIN affectation a
        ON a.idC = e.classe
        AND a.idM = e.matiere
    WHERE a.idP = ?
    ORDER BY e.id DESC
`;

  const [results] = await db.query(sql, [idP]);

  return results;
};

export const createEvaluation = async ({
  periode,
  classe,
  matiere,
  titre,
  note,
  date,
  affiche,
  annee,
}) => {
  const sql = `
        INSERT INTO evaluation
        (periode, classe, matiere, lib, note, date, affiche, annee)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    `;

  const [result] = await db.query(sql, [
    periode,
    classe,
    matiere,
    titre,
    note,
    date,
    affiche,
    annee,
  ]);

  return {id:result.insertId};
};

export const deleteEval = async (id) => {
  try {
    const sql = `
        DELETE FROM evaluation
        WHERE id = ?
    `;
  await db.query(sql, [id]);

  return { message: "Évaluation supprimée avec succès" };
  } catch (error) {
    console.log(error)
    throw new Error("Erreur lors de la suppression de l'évaluation");
  }
}
