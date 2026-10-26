import z from "zod";

const loginSchema = z.object({
    body: z.object({
        username: z.coerce.string().trim().min(1),
        password: z.coerce.string().trim().min(1),
        ecole: z.coerce.string().trim().min(1)
    }),
    params: z.object({}),
    query: z.object({}),
});

export default {
    loginSchema,
};