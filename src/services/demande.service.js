import * as demandeModel from "../models/demande.model.js";

export const createDemande = async (
    type,
    motif,
    date,
    filePath,
    idP
) => {
    return await demandeModel.createDemande(
        type,
        motif,
        date,
        filePath,
        idP
    );
};


export const getDemandesByProf = async (idP) => {
    return await demandeModel.getDemandesByProf(idP);
};


export const getDemandeFile = async (id) => {
    return await demandeModel.getDemandeFile(id);
};


export const deleteDemande = async (id) => {
    return await demandeModel.deleteDemande(id);
};