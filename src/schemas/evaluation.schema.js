import z from "zod";

const evaluationSchemaGet = z.object({
    params: z.object({
        an: z.coerce.string().trim().min(1),
        id: z.coerce.number().int().positive()
    }),
    body: z.object({}),
    query: z.object({}),
})

const evaluationSchemaGetById = z.object({
    params: z.object({
        id: z.coerce.number().int().positive()
    }),
    body: z.object({}),
    query: z.object({}),
})

const evaluationSchemaCreate = z.object({
    body: z.object({
        periode: z.coerce.string().trim().min(1),
        classe: z.coerce.number().int().positive(),  
        matiere: z.coerce.string().trim().min(1),
        titre: z.coerce.string().trim().min(1),
        note: z.coerce.number().min(0).max(100),
        date: z.coerce.string().trim().min(1),
        affiche: z.coerce.boolean(),
        annee: z.coerce.string().trim().min(1),
    }),
    params: z.object({}),
    query: z.object({}),
})


export default {
    evaluationSchemaGet,
    evaluationSchemaGetById,
    evaluationSchemaCreate
}