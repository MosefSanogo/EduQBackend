import db from "../configs/db.js";

const getEmploi = async (idP, an) => {
  try {
    const sql = `SELECT DISTINCT 
  e.*, 
  c.nom AS nom_classe
FROM emploi_du_temps e
-- 1. On lie la classe pour avoir son nom
INNER JOIN classe c 
  ON c.id = e.idC

-- 2. On lie l'affectation sur la CLASSE ET la MATIÈRE du cours
INNER JOIN affectation a 
  ON a.idC = e.idC 
  AND a.idM = e.matiere  

WHERE 
  e.an = ?
  AND a.idP = ?

ORDER BY 
  e.jour ASC,
  e.heure_debut ASC;`;
    const [rows] = await db.execute(sql, [an, idP]);
    return rows;
  } catch (error) {
    console.log(error);
    throw error;
  }
};

const getTodayEmploi = async (idP, an) => {
  try {
    const sql = `SELECT DISTINCT 
    e.*, 
    c.nom AS nom_classe
FROM emploi_du_temps e
INNER JOIN affectation a 
    ON a.idC = e.idC 
    AND a.idM = e.matiere  
INNER JOIN classe c 
    ON c.id = e.idC
WHERE e.an = ?
  AND a.idP = ?
  AND e.jour = DAYOFWEEK(CURDATE());`;
    const [rows] = await db.execute(sql, [an, idP]);
    return rows;
  } catch (error) {
    console.log(error);
    throw error;
  }
};

export default {
  getEmploi,
  getTodayEmploi,
};
