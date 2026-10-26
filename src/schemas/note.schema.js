// src/schemas/note.schema.js
import { z } from "zod";

const eleveSchema = z.object({
  id: z.coerce.number().int().positive(),
  prenom: z.string().trim().min(1),
  nom: z.string().trim().min(1),
  note: z.coerce.number().min(0).max(100),
});

export const createNotesSchema = z.object({ // 👈 Vérifier le mot "export" ici
  body: z.object({
    idE: z.coerce.number().int().positive(),
    eleves: z.array(eleveSchema).min(1),
  }),
  params: z.object({}),
  query: z.object({}),
});