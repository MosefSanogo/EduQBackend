import express from "express";
import { login } from "../controllers/auth.controller.js";
import validate from "../middlewares/validate.middleware.js";
import loginSchema from "../schemas/auth.schema.js";
const routerLogin = express.Router();

routerLogin.post("/login", validate(loginSchema.loginSchema), login);

export default routerLogin;