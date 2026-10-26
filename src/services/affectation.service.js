import * as affectationModel from "../models/affectation.model.js";

export const getAffectations = async (idP) => {
    return await affectationModel.getAffectations(idP);
};


export const getAffectationsByClasse = async (idP, idC) => {
    return await affectationModel.getAffectationsByClasse(
        idP,
        idC
    );
};


export const getAffectationsByNiveau = async (idP, niveau) => {
    return await affectationModel.getAffectationsByNiveau(
        idP,
        niveau
    );
};