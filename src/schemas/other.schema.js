import z from "zod";

const absecenceSchema = z.object({
    id: z.coerce.number().int().positive(),
    statut: z.coerce.string().trim().min(1),
})

const formSchema = z.object({
    matiere: z.coerce.string().trim().min(1),
    classe: z.coerce.number().int().positive(),
    annee: z.coerce.string().trim().min(1),
    date: z.coerce.string().trim().min(1),
})

 export const createAbsecenceSchema = z.object({
    body: z.object({
        absences: z.array(absecenceSchema).min(1),
        form: formSchema,
    }),
    params: z.object({}),
    query: z.object({}),
})

export const otherSchemaGetExamens = z.object({
    params: z.object({
        niveau: z.coerce.string().trim().min(1),
        periode: z.coerce.string().trim().min(1),
    }),
    body: z.object({}),
    query: z.object({}),
})
