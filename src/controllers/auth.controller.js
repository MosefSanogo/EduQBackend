import * as authService from "../services/auth.service.js";

export const login = async (req, res) => {
    const { username, password,ecole } = req.validated.body;

    try {

        if (!username || !password) {
            return res.status(400).json({
                message: "Username et mot de passe obligatoires"
            });
        }

        const result = await authService.login(
            username,
            password
        );

        if (!result.success) {
            return res.status(result.status).json({
                message: result.message
            });
        }

        res.status(200).json({
            message: "Connexion réussie",
            token: result.token,
            user: result.user
        });

    } catch (err) {

        console.error("Erreur login :", err);

        res.status(500).json({
            error: "Erreur serveur"
        });
    }
};