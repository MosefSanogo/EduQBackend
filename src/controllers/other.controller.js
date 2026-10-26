import * as otherService from "../services/other.service.js";


// =========================
// GET /periode
// =========================

export const getPeriodes = async (req, res) => {

    try {

        const result = await otherService.getPeriodes();

        res.status(200).send(result);

    } catch (err) {

        console.error("Erreur getPeriodes :", err);

        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};


// =========================
// POST /absences
// =========================

export const createAbsences = async (req, res) => {

    const { absences, form } = req.validated.body;
    if (!Array.isArray(absences)) {
        return res.status(400).json({
            message: "Format des données invalides"
        });
    }

    try {

        const result = await otherService.createAbsences(
            absences,
            form
        );

        res.status(200).json({
            message: "Les données sont enregistrées avec succès",
            id: result.insertId
        });

    } catch (err) {

        console.error("Erreur createAbsences :", err);

        res.status(500).json({
            error: err.message
        });
    }
};


// =========================
// GET /niveau
// =========================

export const getNiveaux = async (req, res) => {

    try {

        const result = await otherService.getNiveaux();

        res.status(200).send(result);

    } catch (err) {

        console.error("Erreur getNiveaux :", err);

        res.status(500).json({
            error: err.message
        });
    }
};


// =========================
// GET /examen/:niveau/:periode
// =========================

export const getExamens = async (req, res) => {

    const { niveau, periode } = req.params;

    try {

        const result =
            await otherService.getExamensByNiveauAndPeriode(
                niveau,
                periode
            );

        res.status(200).send(result);

    } catch (err) {

        console.error("Erreur getExamens :", err);

        res.status(500).json({
            error: err.message
        });
    }
};

export const getProfPaiements = async (req, res) => {
    const { idP } = req.params;
    try {

        const result = await otherService.getProfPaiements(idP);
        res.status(200).send(result);
    } catch (err) {
        console.error("Erreur getProfPaiements :", err);
        res.status(500).json({
            error: err.message
        });
    }
};