# Openclassrooms Groupomania Réseau social d'entreprise

### Partie Frontend :

```
Répertoire Frontend avec la commande suivante :
cd frontend
Puis:
npm install
Enfin :
npm run serve
```
### Partie Backend :

```
Répertoire backend avec la commande suivante :
cd backend
Puis installations des dépendances du projet :
npm install
Installation de sequelize pour utiliser Mysql sur la machine locale.Mamp, lamp, wamp installé au préalable.
npm install --save sequelize
npm start
```
```
### Mysql sequelize doit etre installé.
Configurez les valeurs de votre base de données
dans le fichier suivant : config/config.json
Exécutez: sequelize db:create
Puis :
sequelize db:migrate

### Erreurs possibles à l'installation :
installer mysql2 à part avec la commande suivante :
npm install --save mysql2
npm install mysql2 -g
```
### Pour l'administration du réseau :
Mettre  à jour la base de données utilisateur en passant la règle "isAdmin" à 1  pour définir l'administrateur (Ici l'utilisateur 3)
SQL : UPDATE `users` SET `isAdmin` = '1' WHERE `users`.`id` = 3; 

### PhpMyAdmin :
Rendez vous dans la table "Users" - éditer l'utlisateur qui sera administrateur du réseau social et modifier la valeur 0 dans la règle "isAdmin"

### Ligne de commande MySql :
Tapez la commande suivante pour créer un utilisateur en ligne de commande (newuser est votre nom d'utilisateur): 
- CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
Attribuer des droits  à l'utilisateur :
-     GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';


 
```
### Powershell errors
### Autoriser l’exécution de scripts PowerShell
Démarrer Windows Powershell, en tant qu’Administrateur.
Taper la commande suivante :
## set-executionpolicy unrestricted
Répondre : o (Oui)
```