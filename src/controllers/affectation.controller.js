import * as affectationService
    from "../services/affectation.service.js";


// GET /affectation/:id
export const getAffectations = async (req, res) => {
    try {
        const { id } = req.validated.params;

        const result =
            await affectationService.getAffectations(
                id * 1
            );

        res.status(200).json(result);

    } catch (error) {
        console.error(
            "Erreur récupération affectations :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};


// GET /affectation/mat/:id/:idc
export const getAffectationsByClasse = async (req, res) => {
    try {
        const { id, idc } = req.validated.params;

        const result =
            await affectationService.getAffectationsByClasse(
                id * 1,
                idc * 1
            );

        res.status(200).json(result);

    } catch (error) {
        console.error(
            "Erreur récupération affectations par classe :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};


// GET /affectation/:id/:niveau
export const getAffectationsByNiveau = async (req, res) => {
    try {
        const { id, niveau } = req.validated.params;

        const result =
            await affectationService.getAffectationsByNiveau(
                id * 1,
                niveau
            );

        res.status(200).json(result);

    } catch (error) {
        console.error(
            "Erreur récupération affectations par niveau :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};