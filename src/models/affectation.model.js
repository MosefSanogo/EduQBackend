import db from "../configs/db.js";

export const checkAffectation = async ({ idP, idC, idM }) => {

    const sql = `
        SELECT id
        FROM affectation
        WHERE idP = ?
          AND idC = ?
          AND idM = ?
        LIMIT 1
    `;

    const [results] = await db.query(sql, [
        idP,
        idC,
        idM
    ]);

    return results.length > 0;
};

// Toutes les affectations d'un professeur
export const getAffectations = async (idP) => {
    const sql = `
        SELECT
            a.id,
            c.nom AS name,
            c.niveau,
            a.idC AS idC,
            a.idM as matiere
        FROM affectation a
        INNER JOIN classe c
            ON c.id = a.idC
        WHERE a.idP = ?
    `;

    const [results] = await db.query(sql, [idP]);

    return results;
};


// Affectations d'un professeur pour une classe
export const getAffectationsByClasse = async (idP, idC) => {
    const sql = `
        SELECT
            a.id,
            c.nom AS name,
            c.niveau,
            a.idC AS idC,
            a.idM
        FROM affectation a
        INNER JOIN classe c
            ON c.id = a.idC
        WHERE a.idP = ?
        AND a.idC = ?
    `;

    const [results] = await db.query(sql, [idP, idC]);

    return results;
};


// Affectations d'un professeur pour un niveau
export const getAffectationsByNiveau = async (idP, niveau) => {
    const sql = `
        SELECT
            a.id,
            c.nom AS name,
            c.niveau,
            a.idC AS idC,
            a.idM
        FROM affectation a
        INNER JOIN classe c
            ON c.id = a.idC
        AND c.niveau = ?
        WHERE a.idP = ?
    `;

    const [results] = await db.query(sql, [niveau, idP]);

    return results;
};