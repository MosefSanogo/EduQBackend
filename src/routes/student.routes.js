import { Router } from "express";
import * as studentController from "../controllers/student.controller.js";
import  studentSchemaNote  from "../schemas/student.schema.js";
import validate from "../middlewares/validate.middleware.js";
import authMiddleware from "../middlewares/auth.middleware.js";
const routerStudent = new Router();

routerStudent.get("/students/:id/:an",authMiddleware(), validate(studentSchemaNote.studentSchemaGetAndPresence), studentController.getStudents);

routerStudent.get("/inscription/:id",authMiddleware(), validate(studentSchemaNote.studentSchemaGetInscription), studentController.getInscription);

routerStudent.get("/admission/:id",authMiddleware(), validate(studentSchemaNote.studentSchemaGetInscription), studentController.getAdmission);

routerStudent.get("/matricule/:id",authMiddleware(), validate(studentSchemaNote.studentSchemaGetInscription), studentController.getMatricule);

routerStudent.get("/presence/:id/:an",authMiddleware(), validate(studentSchemaNote.studentSchemaGetAndPresence), studentController.getPresence);

routerStudent.delete("/delete/presence/:id",authMiddleware(), validate(studentSchemaNote.studentSchemaGetInscription), studentController.deletePresence);

export default routerStudent;