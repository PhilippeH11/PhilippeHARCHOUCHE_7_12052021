//Imports
const multer = require('multer');

const MIME_TYPES = { //notre dictionnaire
    'image/jpg': 'jpg',
    'image/jpeg': 'jpg',
    'image/png': 'png',
    'image/gif': 'gif'
}

//objet de configuration pour multer, diskstorage pour enregister sur le disque
const storage = multer.diskStorage({
    destination: (req, file, callback) => {
        callback(null, 'images') //Dossier de destination
    },
    filename: (req, file, callback) => {//Génération d'un nouveau nom pour le fichier en traitement
        const name = file.originalname.split(' ').join('_'); //ne nom avant l'extension = nom d'origine auquel on supprime les espaces potentiels qu'on remplace par des _
        const extension = MIME_TYPES[file.mimetype]; //élément de notre dictio qui correspond au mimetype du fichier envoyé par le frontend
        callback(null, name + Date.now() + '.' + extension); //Génère le nouveau nom et ajout d'un date.now pour un nom unique
    } 
});

module.exports = multer({ storage }).single('image');