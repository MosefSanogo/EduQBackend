import z from "zod";

const affectationSchemaGet = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
    }),
    body: z.object({}),
    query: z.object({}),
});

const affectationSchemaClass = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
        idc: z.coerce.number().int().positive(),
    }),
    body: z.object({}),
    query: z.object({}),
});

const affectationSchemaNiveau = z.object({
    params: z.object({
        id: z.coerce.number().int().positive(),
        niveau: z.coerce.string().trim().min(1),
    }),
    body: z.object({}),
    query: z.object({}),
});

export default {
    affectationSchemaGet,
    affectationSchemaClass,
    affectationSchemaNiveau,
};