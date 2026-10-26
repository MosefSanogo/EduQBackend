import * as otherModel from "../models/other.model.js";


// =========================
// PERIODES
// =========================

export const getPeriodes = async () => {
    return await otherModel.getPeriodes();
};


// =========================
// ABSENCES
// =========================

export const createAbsences = async (absences, form) => {
    return await otherModel.createAbsences(
        absences,
        form
    );
};


// =========================
// NIVEAUX
// =========================

export const getNiveaux = async () => {
    return await otherModel.getNiveaux();
};


// =========================
// EXAMENS
// =========================

export const getExamensByNiveauAndPeriode = async (
    niveau,
    periode
) => {
    return await otherModel.getExamensByNiveauAndPeriode(
        niveau,
        periode
    );
};

export const getProfPaiements = async (idP)=>{
    return await otherModel.getProfPaiements(idP);
}