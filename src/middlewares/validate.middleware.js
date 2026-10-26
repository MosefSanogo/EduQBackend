const validate = (schema) => (req, res, next) => {
  if (!schema) {
    console.error("Erreur middleware : Aucun schéma Zod fourni");
    return res.status(500).json({
      success: false,
      message: "Erreur de configuration de la validation sur le serveur"
    });
  }
  
  const result = schema.safeParse({
    body: req.body ?? {},
    params: req.params ?? {},
    query: req.query ?? {},
  });

  if (!result.success) {
    return res.status(400).json({
      message: "Données invalides",
      errors: result.error.issues.map((issue) => ({
        field: issue.path.join("."),
        message: issue.message,
      })),
    });
  }

  req.validated = result.data;
  next();
};

export default validate;