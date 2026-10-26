import { z } from "zod";
const elevesSchema = z.object({
        id: z.coerce.number().int().positive(),
        note: z.coerce.number().min(0).max(100),
})

export const createCompoSchema = z.object({
    body: z.object({
        eleves: z.array(elevesSchema).min(1),
        mat: z.coerce.string().trim().min(1),
        annee: z.coerce.string().trim().min(1),
        idC: z.coerce.number().int().positive(),
        idE: z.coerce.number().int().positive(),
    }),
    params: z.object({}),
    query: z.object({}),
})
