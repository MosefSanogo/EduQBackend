import db from "../configs/db.js";

export const getStudents = async (id, an) => {
  try {
    const sql = `
            SELECT 
                a.id,
                a.nom,
                a.prenom,
                a.sexe,
                m.matricule,
                i.statut
            FROM admission a
            INNER JOIN inscription i 
                ON a.id = i.idE
            INNER JOIN matricule m 
                ON a.id = m.idE
            WHERE i.idC = ?
            AND i.annee = ?;
        `;
    const [results] = await db.query(sql, [id, an]);
    return results;
  } catch (error) {
    console.error("Erreur lors de la récupération des étudiants :", error);
  }
};

export const getInscription = async (id) => {
  try {
    const sql = `
            SELECT
                a.id,
                a.annee,
                a.statut,
                c.id AS idC,
                c.nom
            FROM inscription a
            INNER JOIN classe c
                ON c.id = a.idC
            WHERE a.idE = ?;
        `;

    const [results] = await db.query(sql, [id]);
    return results;
  } catch (error) {
    console.error("Erreur lors de la récupération de l'inscription :", error);
  }
};

export const getAdmission = async (id) => {
  try {
    const sql = `
            SELECT
                id,
                nom,
                prenom,
                sexe,
                dob,
                pob,
                img,
                date,
                statut
            FROM admission
            WHERE id = ?;
        `;

    const [rows] = await db.query(sql, [id]);
    return rows;
  } catch (error) {
    console.error("Erreur lors de la récupération de l'admission :", error);
  }
};

export const getMatricule = async (id) => {
  try {
    const sql = `
            SELECT *
            FROM matricule
            WHERE idE = ?;
        `;

    const [results] = await db.query(sql, [id]);
    return results;
  } catch (error) {
    console.error("Erreur lors de la récupération du matricule :", error);
  }
};

export const getPresence = async (id, an) => {
  try {
    const sql = `
            SELECT *
            FROM presence
            WHERE idE = ?
            AND annee = ?;
        `;

    const [results] = await db.query(sql, [id, an]);
    return results;
  } catch (error) {
    console.error("Erreur lors de la récupération de la présence :", error);
  }
};

export const deletePresence = async (id) => {
    try {
        const sql = "DELETE FROM presence WHERE id = ?";
        const [result] = await db.query(sql, [id]);
        return result;
    } catch (error) {
        console.error("Erreur lors de la suppression de la présence :", error);
    }
}
