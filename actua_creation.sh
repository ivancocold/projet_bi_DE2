#!/bin/bash

# Variables de connexion à la base de données
DB_HOST="localhost"
DB_PORT="3306"
DB_USER="root"
DB_PASSWORD="tpuser"
DB_NAME="projetbi"

cd "D:\Dossier Personnel\Etudes\TSE\DE2\business_intelligence\project\ssis\bi_project"

# Chemin vers le fichier plat (SQL, CSV, etc.)
FICHIER_PLAT="ship_methods.csv"

chmod +rx $FICHIER_PLAT

# Commande pour charger les données depuis le fichier plat
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$FICHIER_PLAT"

# Vérification de la réussite ou de l'échec
if [ $? -eq 0 ]; then
  echo "Chargement des données réussi."
else
  echo "Échec du chargement des données."
fi
0