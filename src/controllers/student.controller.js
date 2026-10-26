import * as studentService from "../services/student.service.js";

export const getStudents = async (req, res, next) => {
    try {
        const { id, an } = req.validated.params;
       console.log(id,an)
        const students = await studentService.getStudents(id, an);

        res.status(200).json(students);

    } catch (error) {
        next(error);
        console.error(error);
        res.status(500).json({
            message: "Erreur serveur"
        });
    }
};


export const getInscription = async (req, res, next) => {
    try {
        const { id } = req.validated.params;

        const inscription = await studentService.getInscription(id);

        res.status(200).json(inscription);

    } catch (error) {
        next(error);
        console.error(error);

        res.status(error.status || 500).json({
            message: error.message
        });
    }
};


export const getAdmission = async (req, res, next) => {
    try {
        const { id } = req.validated.params;
        const admission = await studentService.getAdmission(id);

        res.status(200).json(admission);

    } catch (error) {
        next(error);
        console.error(error);

        res.status(error.status || 500).json({
            message: error.message
        });
    }
};


export const getMatricule = async (req, res, next) => {
    try {
        const { id } = req.validated.params;

       
        const matricule = await studentService.getMatricule(id);

        res.status(200).json(matricule);

    } catch (error) {
        next(error);
        console.error(error);

        res.status(error.status || 500).json({
            message: error.message
        });
    }
};


export const getPresence = async (req, res, next) => {
    try {
        const { id, an } = req.validated.params;

        const presence = await studentService.getPresence(id, an);

        res.status(200).json(presence);

    } catch (error) {
        next(error);
        console.error(error);

        res.status(error.status || 500).json({
            message: error.message
        });
    }
};

export const deletePresence = async (req, res, next) => {
    try {
        const { id } = req.validated.params;

        const result = await studentService.deletePresence(id);

        res.status(200).json(result);

    } catch (error) {
        next(error);
        console.error(error);

        res.status(error.status || 500).json({
            message: error.message
        });
    }
};