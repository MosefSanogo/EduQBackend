import { z } from "zod";

const studentSchemaNote = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
        an: z.coerce.string().trim().min(1),
        idc: z.coerce.number().int().positive(),
    }),
    body: z.object({}),
    query: z.object({}),
});

const studentSchemaNoteUpdate = z.object({
    body: z.object({
        note: z.coerce.number().min(0).max(100),
        id: z.coerce.number().int().positive(),
    }),
    params: z.object({}),
    query: z.object({}),
});

const studentSchemaGetAndPresence = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
        an: z.coerce.string().trim().min(1),
    }),
    body: z.object({}),
    query: z.object({}),
})

const studentSchemaGetInscription = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
    }),
    body: z.object({}),
    query: z.object({}),
});

export default {
    studentSchemaNote,
    studentSchemaNoteUpdate,
    studentSchemaGetAndPresence,
    studentSchemaGetInscription,
};
