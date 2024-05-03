#FROM php:7.4-windowsservercore

# Télécharge l'extension PDO MySQL et l'installe
#RUN mkdir c:\php\ext
#RUN curl -o c:\php\ext\php_pdo_mysql.dll https://.../php_pdo_mysql.dll
#RUN echo extension=php_pdo_mysql.dll > c:\php\php.ini



# Utiliser l'image officielle MySQL
FROM mysql:5.7

# Définir la variable d'environnement pour le mot de passe de l'administrateur
ENV MYSQL_ROOT_PASSWORD=root

# Ajouter le script SQL qui initialise la base de données
ADD base_de_donnee/init.sql /docker-entrypoint-initdb.d/


