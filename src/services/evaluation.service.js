import * as evaluationModel from "../models/evaluation.model.js";

export const getEvaluations = async (annee, idP) => {
    return await evaluationModel.getEvaluations(
        annee,
        idP
    );
};

export const getEvaluationsLimit = async (annee, idP) => {
    return await evaluationModel.getEvaluationsLimit(
        annee,
        idP
    );
};

export const getAllEvaluations = async (idP) => {
    return await evaluationModel.getAllEvaluations(idP);
};

export const createEvaluation = async (data) => {
    return await evaluationModel.createEvaluation(data);
};

export const deleteEvaluation = async (id) => {
    return await evaluationModel.deleteEval(id);
}