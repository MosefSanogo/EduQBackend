import multer from "multer";
import path from "path";
import fs from "fs";

const uploadDir = path.join(process.cwd(), "public/demandes");

// Créer le dossier s'il n'existe pas
if (!fs.existsSync(uploadDir)) {
    fs.mkdirSync(uploadDir, { recursive: true });
}

const storage = multer.diskStorage({

    destination: (req, file, cb) => {
        cb(null, uploadDir);
    },

    filename: (req, file, cb) => {

        cb(
            null,
            file.fieldname +
            "_" +
            Date.now() +
            path.extname(file.originalname)
        );
    }
});


const upload = multer({

    storage,

    fileFilter: (req, file, cb) => {

        if (file.mimetype === "application/pdf") {
            cb(null, true);
        } else {
            cb(new Error("Seuls les fichiers PDF sont autorisés"), false);
        }
    },

    limits: {
        fileSize: 10 * 1024 * 1024 // 10 Mo maximum
    }
});

export default upload;