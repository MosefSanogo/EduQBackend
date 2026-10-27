import jwt from "jsonwebtoken";
import 'dotenv/config';

const SECRET = process.env.JWT_SECRET;

if (!SECRET) {
  throw new Error("JWT_SECRET doit être défini dans le fichier .env");
}

const authMiddleware = (roles = []) => {
  return (req, res, next) => {
    const authHeader = req.headers.authorization;

    if (!authHeader || !authHeader.startsWith("Bearer ")) {
      return res.status(401).json({
        success: false,
        message: "Token manquant",
      });
    }

    const token = authHeader.slice(7).trim();

    if (!token) {
      return res.status(401).json({
        success: false,
        message: "Token manquant",
      });
    }

    try {
      const decoded = jwt.verify(token, SECRET, {
        algorithms: ["HS256"],
      });

      if (
        roles.length > 0 &&
        (!decoded.role || !roles.includes(decoded.role))
      ) {
        return res.status(403).json({
          success: false,
          message: "Accès refusé",
        });
      }

      req.user = decoded;
      next();
    } catch (err) {
      if (err.name === "TokenExpiredError") {
        return res.status(401).json({
          success: false,
          message: "Token expiré",
        });
      }

      return res.status(401).json({
        success: false,
        message: "Token invalide",
      });
    }
  };
};

export default authMiddleware;