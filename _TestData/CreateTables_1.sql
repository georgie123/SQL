
-- MYSQL/MariaDB
USE systeme_a ;

-- Creation of table customers
DROP TABLE IF EXISTS customers ;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_submit datetime,
    date_edit datetime DEFAULT CURRENT_TIMESTAMP,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email1 VARCHAR(150) NOT NULL,
    email2 VARCHAR(150),
    email3 VARCHAR(150),
    speciality VARCHAR(50) NOT NULL
) ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 ;

-- Insert in table customers
INSERT INTO customers (date_submit, date_edit, firstname, lastname, email1, email2, email3, speciality) VALUES
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 'Jean', 'Bon', 'jean.bon@example.fr', 'jean.bon2@example.fr', '', 'Charcutier'),
('2007-04-04 00:00:00', '2022-05-01 00:00:00', 'Marie', 'Glace', 'marie.glace@example.fr', 'marie.glace2@example.fr', 'marie.glace3@example.fr', 'Glacier'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 'Alain', 'Proviste', 'alain.proviste@example.fr', '', '', 'Surprise Party Organizer'),
('2021-04-04 00:00:00', '2022-05-01 00:00:00', 'Anna', 'Conda', 'anna.conda@example.fr', 'anna.conda2@example.fr', '', 'Herpétologue'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 'Jacques', 'Oule', 'jacques.oule@example.fr', '', 'jacques.oule3@example.fr', 'Sculpteur'),
('2022-04-04 00:00:00', '2023-05-01 00:00:00', 'Philippe', 'Harmonique', 'philippe.harmonique@example.fr', 'philippe.harmonique2@example.fr', 'philippe.harmonique3@example.fr', 'Chef d\'orchestre'),
('2007-04-04 00:00:00', '2022-05-01 00:00:00', 'Paul', 'Ochon', 'paul.ochon@example.fr', '', '', 'Agriculteur'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 'Claire', 'Mentaire', 'claire.mentaire@example.fr', 'claire.mentaire2@example.fr', '', 'Dentiste'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 'Anne', 'Tenne', 'anne.tenne@example.fr', '', 'anne.tenne3@example.fr', 'Électricienne'),
('2007-04-04 00:00:00', '2021-05-01 00:00:00', 'Ella', 'Boration', 'ella.boration@example.fr', 'ella.boration2@example.fr', '', 'Chimiste');


-- Creation of table addresses
DROP TABLE IF EXISTS addresses ;
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT NOT NULL,
    add1 VARCHAR(100) NOT NULL,
    zipcode VARCHAR(10) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(100) NOT NULL
) ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 ;

-- Insert in table addresses
INSERT INTO addresses (id_customer, add1, zipcode, city, state, country) VALUES
(1, '12 Rue de la Blague', '75001', 'Paris', 'Île-de-France', 'France'),
(2, '34 Avenue des Farces', '75008', 'Paris', 'Île-de-France', 'France'),
(3, '56 Boulevard de l\'Humour', '75006', 'Paris', 'Île-de-France', 'France'),
(4, '78 Rue des Jeux de Mots', '75001', 'Paris', 'Île-de-France', 'France'),
(5, '90 Rue du Calembour', '75008', 'Paris', 'Île-de-France', 'France'),
(6, '123 Rue de la Comédie', '75007', 'Paris', 'Île-de-France', 'France'),
(7, '45 Rue de la Cocasserie', '75008', 'Paris', 'Île-de-France', 'France'),
(8, '67 Rue de la Bouffonnerie', '75016', 'Paris', 'Île-de-France', 'France'),
(9, '89 Rue de la Facétie', '75006', 'Paris', 'Île-de-France', 'France'),
(10, '101 Rue de la Plaisanterie', '75006', 'Paris', 'Île-de-France', 'France') ;

-- Creation of table phones
DROP TABLE IF EXISTS phones ;
CREATE TABLE phones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT NOT NULL,
    date_submit datetime,
    date_edit datetime DEFAULT CURRENT_TIMESTAMP,
    phone1_type VARCHAR(20),
    phone1_code VARCHAR(20),
    phone1_number VARCHAR(30),
    phone2_type VARCHAR(20),
    phone2_code VARCHAR(20),
    phone2_number VARCHAR(30),
    phone3_type VARCHAR(20),
    phone3_code VARCHAR(20),
    phone3_number VARCHAR(30)
) ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 ;

-- Insert in table phones
INSERT INTO phones (date_submit, date_edit, id_customer, phone1_type, phone1_code, phone1_number) VALUES
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 1, 'Mobile', '33', '06 12 34 56 78'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 2, 'Mobile', '33', '06 98 76 54 32'),
('2022-04-04 00:00:00', '2023-05-01 00:00:00', 3, 'Mobile', '33', '06 11 22 33 44'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 4, 'Mobile', '33', '06 22 33 44 55'),
('2022-04-04 00:00:00', '2023-05-01 00:00:00', 5, 'Mobile', '33', '06 33 44 55 66'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 6, 'Mobile', '33', '06 44 55 66 77'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 7, 'Mobile', '33', '06 55 66 77 88'),
('2007-04-04 00:00:00', '2022-05-01 00:00:00', 8, 'Mobile', '33', '06 66 77 88 99'),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 9, 'Mobile', '33', '06 77 88 99 00'),
('2007-04-04 00:00:00', '2021-05-01 00:00:00', 10, 'Mobile', '33', '06 88 99 00 11') ;


-- Creation of table commandes
DROP TABLE IF EXISTS commandes ;
CREATE TABLE commandes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT NOT NULL,
    date_submit datetime,
    date_edit datetime DEFAULT CURRENT_TIMESTAMP,
    commande_firstname VARCHAR(100) NOT NULL,
    commande_lastname VARCHAR(100) NOT NULL,
    commande_email1 VARCHAR(150) NOT NULL,
    commande_speciality VARCHAR(150) NOT NULL,
    commande_country VARCHAR(150) NOT NULL,
    amount decimal(15,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 ;


-- Insert in table commandes
INSERT INTO commandes (date_submit, date_edit, id_customer, commande_firstname, commande_lastname, commande_email1, commande_speciality, commande_country, amount) VALUES
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 1, 'Louis', 'Vuitton', 'louis.vuitton@example.fr', 'Designer', 'France', 5000),
('2021-04-04 00:00:00', '2023-05-01 00:00:00', 2, 'Sophie', 'Marceau', 'sophie.marceau@example.fr', 'Actrice', 'France', 3000),
('2007-04-04 00:00:00', '2021-05-01 00:00:00', 3, 'Georges', 'Brassens', 'georges.brassens@example.fr', 'Chanteur', 'France', 4500),
('2021-04-04 00:00:00', '2023-05-01 00:00:00', 4, 'Camille', 'Coton', 'camille.coton@example.fr', 'Textiliste', 'France', 2000),
('2007-04-04 00:00:00', '2024-05-01 00:00:00', 5, 'Henri', 'Potter', 'henri.potter@example.fr', 'Magicien', 'Royaume-Uni', 3500),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 6, 'Isabelle', 'Huppert', 'isabelle.huppert@example.fr', 'Réalisatrice', 'France', 4000),
('2007-04-04 00:00:00', '2021-05-01 00:00:00', 7, 'Vincent', 'Van Gogh', 'vincent.vangogh@example.fr', 'Peintre', 'Pays-Bas', 5500),
('2021-04-04 00:00:00', '2023-05-01 00:00:00', 8, 'Marie', 'Curie', 'marie.curie@example.fr', 'Scientifique', 'Pologne', 6000),
('2007-04-04 00:00:00', '2023-05-01 00:00:00', 9, 'Leonardo', 'Da Vinci', 'leonardo.davinci@example.fr', 'Inventeur', 'Italie', 7000),
('2022-04-04 00:00:00', '2023-05-01 00:00:00', 9, 'Charles', 'Darwin', 'charles.darwin@example.fr', 'Biologiste', 'Royaume-Uni', 2500) ;
