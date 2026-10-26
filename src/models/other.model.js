import db from "../configs/db.js";


// =========================
// PERIODES
// =========================

export const getPeriodes = async () => {
    const sql = `
        SELECT *
        FROM periode
    `;

    const [result] = await db.query(sql);

    return result;
};


// =========================
// ABSENCES
// =========================

export const createAbsences = async (absences, form) => {

    const values = absences.map(d => [
        d.id,
        form.matiere,
        Number(form.classe),
        d.statut,
        form.annee,
        form.date
    ]);

    const sql = `
        INSERT INTO presence
        (idE, mat, idC, type, annee, date)
        VALUES ?
    `;

    const [result] = await db.query(sql, [values]);

    return result;
};


// =========================
// NIVEAUX
// =========================

export const getNiveaux = async () => {

    const sql = `
        SELECT *
        FROM niveau
    `;

    const [result] = await db.query(sql);

    return result;
};


// =========================
// EXAMENS
// =========================

export const getExamensByNiveauAndPeriode = async (
    niveau,
    periode
) => {

    const sql = `
        SELECT 
        id,
        lib,
        niveau,
        periode
        FROM examen
        WHERE niveau = ?
        AND periode = ?
    `;

    const [result] = await db.query(sql, [
        niveau,
        periode
    ]);

    return result;
};

export const getProfPaiements = async (idP) => {
    try {
        const sql = `
            SELECT 
            id,
            idP,
            mois,
            montant,
            heure,
            date,
            annee as anneeScolaire
            FROM salaire
            WHERE idP = ?
        `;
        const [results] = await db.query(sql, [idP]);
        return results;
    } catch (error) {
        throw error;    
    }
}