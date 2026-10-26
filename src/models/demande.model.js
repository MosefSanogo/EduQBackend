import db from "../configs/db.js";

// Ajouter une demande
export const createDemande = async (
    type,
    motif,
    date,
    filePath,
    idP
) => {
    const sql = `
        INSERT INTO demandes
        (type, motif, date, file_path, statut, idP)
        VALUES (?, ?, ?, ?, ?, ?)
    `;

    const [result] = await db.query(sql, [
        type,
        motif,
        date,
        filePath,
        "pending",
        idP
    ]);

    return result;
};


// Récupérer les demandes d'un professeur
export const getDemandesByProf = async (idP) => {
    const sql = `
        SELECT 
            id,
            type,
            motif as description,
            date,
            statut as status,
            created_at
        FROM demandes
        WHERE idP = ?
        ORDER BY id DESC
    `;

    const [rows] = await db.query(sql, [idP]);

    return rows;
};


// Récupérer le chemin du PDF
export const getDemandeFile = async (id) => {
    const sql = `
        SELECT file_path
        FROM demandes
        WHERE id = ?
    `;

    const [rows] = await db.query(sql, [id]);

    return rows[0] || null;
};


// Supprimer une demande
export const deleteDemande = async (id) => {
    const sql = `
        DELETE FROM demandes
        WHERE id = ?
    `;

    const [result] = await db.query(sql, [id]);

    return result;
};