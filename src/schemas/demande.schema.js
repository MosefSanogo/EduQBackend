import z from "zod";

const demandeSchemaCreate  = z.object({
    body: z.object({
        motif: z.coerce.string().trim().min(1),
        date: z.coerce.string().trim().min(1),
        idP: z.coerce.number().int().positive(),
    }),
    params: z.object({}),
    query: z.object({}),
})

const demandeSchemaGetPdf = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
    }),
    body: z.object({}),
    query: z.object({}),
})

export default {
    demandeSchemaCreate,
    demandeSchemaGetPdf,
};