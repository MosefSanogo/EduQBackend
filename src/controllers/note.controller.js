import * as noteService from "../services/note.service.js";

export const createNotes = async (req, res) => {
    try {
        const { eleves, idE } = req.validated.body;
        if (!Array.isArray(eleves) || eleves.length === 0) {
            return res.status(400).json({
                success: false,
                message: "Liste des élèves invalide"
            });
        }

        if (!idE) {
            return res.status(400).json({
                success: false,
                message: "L'évaluation est obligatoire"
            });
        }

        // L'identifiant du professeur vient du JWT
        const idP = req.user?.id || 1;

        const result = await noteService.createNotes({
            eleves,
            idE,
            idP
        });

        return res.status(201).json({
            success: true,
            message: "Les notes sont enregistrées avec succès",
            ...result
        });

    } catch (error) {
        console.error("Erreur controller note :", error);

        if (error.status) {
            return res.status(error.status).json({
                success: false,
                message: error.message
            });
        }

        return res.status(500).json({
            success: false,
            message: "Erreur lors de l'enregistrement des notes"
        });
    }
};

export const getStudentNotes = async (req, res) => {
    try {
        const { id, an, idc } = req.validated.params;

        const notes = await noteService.getStudentNotes(
            id * 1,
            an,
            idc * 1
        );

        res.status(200).json(notes);

    } catch (error) {
        console.error(
            "Erreur récupération notes :",
            error
        );

        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};

// GET /getComp/:id/:an/:idc
export const getStudentCompo = async (req, res) => {
    const { id, an, idc } = req.validated.params;

    try {
        const result = await noteService.getStudentComp(
            id * 1,
            an,
            idc * 1
        );

        res.status(200).send(result);

    } catch (err) {
        console.error("Erreur getStudentNotes :", err);
        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};


// POST /updateNote
export const updateNote = async (req, res) => {
    const { note, id } = req.validated.body;

    try {
        const result = await noteService.updateNote(
            Number(id),
            Number(note)
        );

        if (result.affectedRows === 0) {
            return res.status(404).json({
                message: "Note introuvable"
            });
        }

        res.status(200).json({
            message: "La note est modifiée avec succès",
            id
        });

    } catch (err) {
        console.error("Erreur updateNote :", err);
        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};


// POST /updateCompo
export const updateCompo = async (req, res) => {
    const { note, id } = req.validated.body;

    try {
        const result = await noteService.updateCompo(
            Number(id),
            Number(note)
        );

        if (result.affectedRows === 0) {
            return res.status(404).json({
                message: "Composition introuvable"
            });
        }

        res.status(200).json({
            message: "La note est modifiée avec succès",
            id
        });

    } catch (err) {
        console.error("Erreur updateCompo :", err);
        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};

export const createCompo = async (req, res,next) => {
    try {
        const { eleves, mat, annee, idC, idE } = req.validated.body;
        const result = await noteService.createCompo(eleves, idC, mat, annee, idE);
        res.status(201).json(result);
    } catch (error) {
        console.error("Erreur createCompo :", error);
        res.status(500).json({
            error: "Erreur serveur"
        });
        next(error);
    }
}