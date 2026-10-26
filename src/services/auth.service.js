import jwt from "jsonwebtoken";
import * as authModel from "../models/auth.model.js";

export const login = async (username, password) => {
  const user = await authModel.findUserByUsername(username);

  if (!user) {
    return {
      success: false,
      status: 401,
      message: "Utilisateur non trouvé",
    };
  }

  // Vérification du mot de passe
  const isPasswordValid = password === user.password;

  if (!isPasswordValid) {
    return {
      success: false,
      status: 401,
      message: "Mot de passe incorrect",
    };
  }

  // Vérification du rôle
  const isEnseignant = user.role === "Enseignant";

  if (!isEnseignant) {
    return {
      success: false,
      status: 403,
      message: "Accès interdit",
    };
  }

  // Génération du JWT
  const token = jwt.sign(
    {
      id: user.user_id,
      idP: user.personnel_id,
      username: user.username,
      role: user.role,
    },
    process.env.JWT_SECRET,
    {
      algorithm: "HS256",
      expiresIn: "2h",
    },
  );

  // Conversion de l'image
  let image = user.img;

  if (image) {
    image = image.toString("base64");
  }

  return {
    success: true,
    token,
    user: {
      id: user.personnel_id,
      nom: user.nom,
      prenom: user.prenom,
      role: user.role,
      sexe: user.sexe,
      dob: user.dob,
      pob: user.pob,
      tel: user.tel,
      email: user.email,
      username: user.username,
      userId: user.user_id,
      img: image,
    },
  };
};
