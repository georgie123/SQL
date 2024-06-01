

-- Postgres
USE systeme_b ;

DROP TABLE IF EXISTS prospects ;
CREATE TABLE prospects
(
id serial NOT NULL,

    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email1 VARCHAR(150) NOT NULL,
    speciality VARCHAR(50) NOT NULL
) ;
