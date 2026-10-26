import path from "path";

import * as demandeService from "../services/demande.service.js";


// Upload d'une demande
export const createDemande = async (req, res) => {
    try {
        const {type, motif, date, idP } = req.body;

        if (!req.file) {
            return res.status(400).json({
                message: "Aucun fichier PDF envoyé"
            });
        }

        const filePath = req.file.filename;

        const result = await demandeService.createDemande(
            type,
            motif,
            date,
            filePath,
            Number(idP)
        );

        res.status(200).json({
            message: "Demande enregistrée !",
            id: result.insertId
        });

    } catch (err) {
        console.error("Erreur createDemande :", err);

        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};


// Récupérer les demandes
export const getDemandesByProf = async (req, res) => {
    const { id } = req.validated.params;

    try {
        const result = await demandeService.getDemandesByProf(
            Number(id)
        );

        res.status(200).send(result);

    } catch (err) {
        console.error("Erreur getDemandes :", err);

        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};


// Récupérer le PDF
export const getDemandePdf = async (req, res) => {

    const { id } = req.validated.params;

    try {
        const demande = await demandeService.getDemandeFile(
            Number(id)
        );

        if (!demande) {
            return res.status(404).send(
                "Demande introuvable"
            );
        }

        const filePath = path.join(
            process.cwd(),
            "public/demandes",
            demande.file_path
        );

        res.sendFile(filePath);

    } catch (err) {
        console.error("Erreur getDemandePdf :", err);

        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};

// Supprimer une demande
export const deleteDemande = async (req, res) => {
    const { id } = req.validated.params;

    try {
        const result = await demandeService.deleteDemande(
            Number(id)
        );

        if (result.affectedRows === 0) {
            return res.status(404).send(
                "Demande introuvable"
            );
        }

        res.status(200).json({
            message: "Demande supprimée avec succès"
        });

    } catch (err) {
        console.error("Erreur deleteDemande :", err);

        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};