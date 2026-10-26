import db from "../configs/db.js";

/// Créer des notes pour un élève
export const createNotes = async (values) => {

    const sql = `
        INSERT INTO note
        (idE, prenom, nom, note, mat, annee, idC, eval)
        VALUES ?
    `;

    const [result] = await db.query(sql, [values]);

    return {
        id: result.insertId,
        affectedRows: result.affectedRows
    };
};

// Insérer les notes manquantes pour un élève
export const insertMissingNotes = async (idE, an, idC) => {
    const sql = `
        INSERT INTO note
        (idE, prenom, nom, note, mat, annee, idC, eval)
        SELECT
            ?,
            '',
            '',
            0,
            n.mat,
            ?,
            ?,
            e.id
        FROM evaluation e
        INNER JOIN (
            SELECT DISTINCT
                n.mat,
                n.eval
            FROM note n
            WHERE n.idC = ?
            AND n.annee = ?
        ) n ON n.eval = e.id
        WHERE NOT EXISTS (
            SELECT 1
            FROM note existing
            WHERE existing.idE = ?
            AND existing.mat = n.mat
            AND existing.eval = e.id
            AND existing.annee = ?
        )
    `;

    const [result] = await db.query(sql, [
        idE,
        an,
        idC,
        idC,
        an,
        idE,
        an
    ]);

    return result;
};

// Récupérer toutes les notes d'un élève pour une année et une classe données
export const getStudentNotes = async (idE, an, idC) => {
    const sql = `
        SELECT
            n.id,
            n.idE,
            n.mat,
            m.coef,
            e.lib,
            n.note,
            n.eval,
            e.periode
        FROM note n
        INNER JOIN mataffect m
            ON m.idC = ?
            AND m.libelle = n.mat
        INNER JOIN evaluation e
            ON e.id = n.eval
        WHERE n.idE = ?
        AND n.annee = ?
    `;

    const [results] = await db.query(sql, [
        idC,
        idE,
        an
    ]);

    return results;
};

// Mettre à jour une note   
export const updateNote = async (id, note) => {
    const sql = `
        UPDATE note 
        SET note = ? 
        WHERE id = ?
    `;

    const [result] = await db.query(sql, [note, id]);

    return result;
};


export const getStudentCompo = async (id, an, idc) => {
    const insertSql = `
        INSERT INTO comp (idE, idC, mat, note, an, idEx)
        SELECT ?, ?, n.mat, 0, ?, e.id
        FROM examen e
        INNER JOIN (
            SELECT DISTINCT n.mat, n.idEx
            FROM comp n
            WHERE n.idC = ? AND n.an = ?
        ) n ON n.idEx = e.id
        WHERE NOT EXISTS (
            SELECT 1
            FROM comp existing
            WHERE existing.idE = ?
              AND existing.mat = n.mat
              AND existing.idEx = e.id
              AND existing.an = ?
        );
    `;

    await db.query(insertSql, [
        id,
        idc,
        an,
        idc,
        an,
        id,
        an
    ]);

    const selectSql = `
        SELECT 
            n.id,
            n.idEx,
            n.idE,
            n.mat,
            e.lib,
            n.note,
            e.periode
        FROM comp n
        JOIN examen e ON e.id = n.idEx
        WHERE n.idE = ? 
          AND n.an = ?;
    `;

    const [result] = await db.query(selectSql, [id, an]);

    return result;
};

// Modifier une note de composition
export const updateCompo = async (id, note) => {
    const sql = `
        UPDATE comp 
        SET note = ? 
        WHERE id = ?
    `;

    const [result] = await db.query(sql, [note, id]);

    return result;
};

export const checkIfCompoExists = async (idE, mat, idC, annee) => {
    try {
        const sql = `
            SELECT COUNT(*) AS count
            FROM comp
            WHERE idEx = ?
              AND mat = ?
              AND idC = ?
              AND an = ?
        `;
        const [rows] = await db.query(sql, [idE, mat, idC, annee]);
        return rows[0].count > 0;
    } catch (error) {
        console.error(error);
        throw new Error("Erreur lors de la vérification de l'existence de la composition");
    }
}

export const createCompo = async (values) => {
    try {
        const sql = `
            INSERT INTO comp(idE, idC, mat, note, an, idEx) 
            VALUES ?
        `;
        const [result] = await db.query(sql, [values]);
        return result;
    } catch (error) {
        console.error(error);
        throw new Error("Erreur lors de la création de la composition");
    }
}