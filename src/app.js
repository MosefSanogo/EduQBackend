import "dotenv/config";

import express from "express";
import cors from "cors";
import helmet from "helmet";

import authMiddleware from "./middlewares/auth.middleware.js";

import routerStudent from "./routes/student.routes.js";
import routerNotes from "./routes/note.routes.js";
import routerEval from "./routes/evaluation.routes.js";
import routerAffect from "./routes/affectation.routes.js";
import routerDemande from "./routes/demande.routes.js";
import routerLogin from "./routes/auth.routes.js";
import routerOther from "./routes/other.routes.js";
import routerEmploi from "./routes/emploi.routes.js";

const app = express();

// Sécurité HTTP
app.use(helmet());

// CORS : configure les origines de ton éventuel client web.
// Une application React Native native n'envoie généralement pas
// d'en-tête Origin comme un navigateur.
const allowedOrigins = (process.env.CORS_ORIGINS || "")
  .split(",")
  .map((origin) => origin.trim())
  .filter(Boolean);

app.use(
  cors({
    origin(origin, callback) {
      // Autorise les clients sans Origin, notamment les apps natives.
      if (!origin || allowedOrigins.includes(origin)) {
        return callback(null, true);
      }

      return callback(new Error("Origine non autorisée"));
    },
    methods: ["GET", "POST", "PUT", "PATCH", "DELETE"],
    allowedHeaders: ["Content-Type", "Authorization"],
  })
);

// Limitation de taille des requêtes
app.use(express.json({ limit: "100kb" }));
app.use(express.urlencoded({ extended: true, limit: "100kb" }));

// Routes API
app.use("/api/students", routerStudent);
app.use("/api/notes", routerNotes);
app.use("/api/evaluations", routerEval);
app.use("/api/affectations", routerAffect);
app.use("/api/demandes", routerDemande);
app.use("/api/auth", routerLogin);
app.use("/api/other", routerOther);
app.use("/api/emploi", routerEmploi);

// Vérification du JWT
app.get("/api/me", authMiddleware(), (req, res) => {
  res.status(200).json({
    message: "Utilisateur connecté",
    user: req.user,
  });
});

// Route inconnue
app.use((req, res) => {
  res.status(404).json({
    message: "Route introuvable",
  });
});

// Gestionnaire d'erreurs : toujours placé après les routes
app.use((err, req, res, next) => {
  console.error(err);

  if (res.headersSent) {
    return next(err);
  }

  res.status(err.status || 500).json({
    message:
      process.env.NODE_ENV === "production"
        ? "Une erreur est survenue"
        : err.message,
  });
});

export default app;