import * as evaluationService
    from "../services/evaluation.service.js";

export const getEvaluations = async (req, res) => {
    try {
        const { an, id } = req.validated.params;

        const evaluations =
            await evaluationService.getEvaluations(
                an,
                id
            );

        res.status(200).json(evaluations);

    } catch (error) {
        console.error(
            "Erreur récupération évaluations :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};

export const getEvaluationsLimit = async (req, res) => {
    try {
        const { an, id } = req.validated.params;

        const evaluations =
            await evaluationService.getEvaluationsLimit(
                an,
                id
            );

        res.status(200).json(evaluations);

    } catch (error) {
        console.error(
            "Erreur récupération évaluations limit :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};

export const getAllEvaluations = async (req, res) => {
    try {
        const { id } = req.validated.params;

        const evaluations =
            await evaluationService.getAllEvaluations(id);

        res.status(200).json(evaluations);

    } catch (error) {
        console.error(
            "Erreur récupération toutes évaluations :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};

export const createEvaluation = async (req, res) => {
    try {
        const {
            periode,
            classe,
            matiere,
            titre,
            note,
            date,
            affiche,
            annee
        } = req.validated.body;
       
        const result =
            await evaluationService.createEvaluation({
                periode,
                classe: classe * 1,
                matiere,
                titre,
                note: note * 1,
                date,
                affiche,
                annee
            });

        res.status(200).json(result);

    } catch (error) {
        console.error(
            "Erreur création évaluation :",
            error
        );

        res.status(500).json({
            message: error.message
        });
    }
};

export const deleteEvaluation = async (req, res) => {
    try {
        const { id } = req.params;
        const result = await evaluationService.deleteEvaluation(id);
        res.status(200).json(result);
    } catch (error) {
        console.error(
            "Erreur suppression évaluation :",
            error
        );
        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};
