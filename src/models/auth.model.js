import db from "../configs/db.js";

export const findUserByUsername = async (username) => {
    const query = `
        SELECT 
            p.id AS personnel_id,
            p.nom,
            p.prenom,
            p.sexe,
            p.dob,
            p.pob,
            p.tel,
            p.email,
            u.role,
            u.username,
            u.password,
            u.id AS user_id
        FROM personnel p
        INNER JOIN user u ON p.id = u.idP
        WHERE u.username = ?
    `;

    const [result] = await db.query(query, [username]);

    return result[0] || null;
};