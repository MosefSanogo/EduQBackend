import * as studentModel from "../models/student.model.js";


export const getStudents = async (id, an) => {

    if (!id || !an) {
        const error = new Error("Classe et année obligatoires");
        error.status = 400;
        throw error;
    }

    return await studentModel.getStudents(id, an);
};


export const getInscription = async (id) => {

    const result = await studentModel.getInscription(id);

    if (result.length === 0) {
        const error = new Error("Aucune inscription trouvée");
        error.status = 404;
        throw error;
    }

    return result[result.length - 1];
};


export const getAdmission = async (id) => {

    const result = await studentModel.getAdmission(id);
    if (result.length === 0) {
        const error = new Error("Aucun élève trouvé");
        error.status = 404;
        throw error;
    }

    const eleve = result[0];

    if (eleve.img) {
        eleve.img = eleve.img.toString("base64");
    }

    return eleve;
};


export const getMatricule = async (id) => {

    const result = await studentModel.getMatricule(id);

    if (result.length === 0) {
        const error = new Error("Matricule introuvable");
        error.status = 404;
        throw error;
    }

    return result[0];
};


export const getPresence = async (id, an) => {

    return await studentModel.getPresence(id, an);
};

export const deletePresence = async (id) => {
    const result = await studentModel.deletePresence(id);
    if(result.affectedRows === 0) {
        return {
            success: false,
            message: "Aucune présence trouvée pour l'ID fourni."
        };
    }
    return {
        success: true,
        message: "Présence supprimée avec succès."
    };
};