DROP DATABASE IF EXISTS exo_contact;
CREATE DATABASE  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE exo_contact;

CREATE TABLE contact(
    id int(11) BIGINT PRIMARY KEY AUTO_INCREMENT,
   nom VARCHAR(70) NOT NULL,
   prenom VARCHAR(70) NOT NULL,
   date_de_naissance DATE NOT NULL,
   sexe VARCHAR(20) NOT NULL,
   adresse VARCHAR(100) NOT NULL, 
   cp VARCHAR(20) NOT NULL,
   ville VARCHAR(70) NOT NULL,
   pays_iso_3 VARCHAR(3) NOT NULL,
   updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE telephone(
    id int(11) BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_contact int NOT NULL,
    numero VARCHAR(50) NOT NULL,
    type BYTE NOT NULL,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    FOREIGN KEY(id) REFERENCES Contact(id),
);

CREATE TABLE pays(
    iso_3 VARCHAR(3) BIGINT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70) NOT NULL,
    iso_2 VARCHAR(2) NOT NULL,
    nationalite VARCHAR(50) NOT NULL,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    FOREIGN KEY(iso_3) REFERENCES Contact(id),
);