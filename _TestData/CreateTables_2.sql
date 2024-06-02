
-- Postgres
-- systeme_b

-- Creation of table prospects_hot
DROP TABLE IF EXISTS prospects_hot ;

CREATE TABLE prospects_hot
(
    id serial NOT NULL,
    date_submit TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_edit TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email1 VARCHAR(150) NOT NULL,
    email2 VARCHAR(150),
    email3 VARCHAR(150),
    phone1 VARCHAR(20),
    phone2 VARCHAR(20),
    phone3 VARCHAR(20),
    speciality VARCHAR(50),
    country VARCHAR(50)
) ;
ALTER TABLE prospects_hot OWNER TO postgres ;
ALTER TABLE prospects_hot ADD CONSTRAINT "key_prospects_hot" PRIMARY KEY (id) ;

-- Insert in table prospects_hot
INSERT INTO prospects_hot (date_submit, date_edit, firstname, lastname, email1, email2, email3, phone1, phone2, phone3, speciality, country)
VALUES
    (NULL, NULL, 'John', 'Doe', 'john.doe@example.com', 'john.doe2@example.com', NULL, '123-456-7890', NULL, NULL, 'Engineering', 'USA'),
    (NULL, NULL, 'Jane', 'Smith', 'jane.smith@example.com', NULL, NULL, '234-567-8901', NULL, NULL, 'Marketing', 'Canada'),
    ('2024-06-03 12:34:56', NULL, 'Alice', 'Johnson', 'alice.johnson@example.com', 'alice.johnson2@example.com', 'alice.johnson3@example.com', '345-678-9012', NULL, NULL, 'Finance', 'UK'),
    (NULL, NULL, 'Bob', 'Brown', 'bob.brown@example.com', NULL, 'bob.brown3@example.com', '456-789-0123', NULL, NULL, 'Human Resources', 'Australia'),
    ('2024-06-05 08:00:00', NULL, 'Charlie', 'Davis', 'charlie.davis@example.com', 'charlie.davis2@example.com', NULL, '567-890-1234', NULL, NULL, 'Engineering', 'Germany'),
    (NULL, '2024-06-06 09:15:00', 'Diana', 'Miller', 'diana.miller@example.com', NULL, 'diana.miller3@example.com', '678-901-2345', NULL, NULL, 'Marketing', 'France'),
    ('2024-06-07 14:30:00', NULL, 'Eve', 'Wilson', 'eve.wilson@example.com', 'eve.wilson2@example.com', 'eve.wilson3@example.com', '789-012-3456', NULL, NULL, 'Finance', 'Spain'),
    (NULL, NULL, 'Frank', 'Moore', 'frank.moore@example.com', NULL, NULL, NULL, NULL, NULL, 'Human Resources', 'Italy'),
    (NULL, '2024-06-09 11:45:00', 'Grace', 'Taylor', 'grace.taylor@example.com', 'grace.taylor2@example.com', NULL, '890-123-4567', NULL, NULL, 'Engineering', 'Netherlands'),
    (NULL, NULL, 'Hank', 'Anderson', 'hank.anderson@example.com', NULL, 'hank.anderson3@example.com', '901-234-5678', NULL, NULL, 'Marketing', 'Sweden') ;


-- Creation of table prospects_cold
DROP TABLE IF EXISTS prospects_cold ;

CREATE TABLE prospects_cold
(
    id serial NOT NULL,
    date_submit TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_edit TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email1 VARCHAR(150) NOT NULL,
    email2 VARCHAR(150),
    email3 VARCHAR(150),
    phone1 VARCHAR(20),
    phone2 VARCHAR(20),
    phone3 VARCHAR(20),
    speciality VARCHAR(50),
    country VARCHAR(50)
) ;
ALTER TABLE prospects_cold OWNER TO postgres ;
ALTER TABLE prospects_cold ADD CONSTRAINT "key_prospects_cold" PRIMARY KEY (id) ;

-- Insert in table prospects_cold
INSERT INTO prospects_cold (date_submit, date_edit, firstname, lastname, email1, email2, email3, phone1, phone2, phone3, speciality, country)
VALUES
    (NULL, NULL, 'Robert', 'Downey', 'robert.downey@example.com', 'rd.jr@example.com', NULL, '123-456-7890', '223-456-7890', NULL, 'Actor', 'USA'),
    ('2024-06-01 14:30:00', NULL, 'Chris', 'Evans', 'chris.evans@example.com', NULL, NULL, '234-567-8901', NULL, NULL, 'Actor', 'USA'),
    ('2024-05-20 10:15:00', '2024-06-02 09:45:00', 'Scarlett', 'Johansson', 'scarlett.johansson@example.com', 'scarlett.j@example.com', NULL, '345-678-9012', '445-678-9012', NULL, 'Actor', 'USA'),
    (NULL, '2024-06-05 12:00:00', 'Chris', 'Hemsworth', 'chris.hemsworth@example.com', 'ch.hemsworth@example.com', 'chris.hemsworth3@example.com', '456-789-0123', '556-789-0123', '656-789-0123', 'Actor', 'Australia'),
    ('2024-04-25 08:00:00', NULL, 'Mark', 'Ruffalo', 'mark.ruffalo@example.com', NULL, 'mark.ruffalo3@example.com', '567-890-1234', NULL, NULL, 'Actor', 'USA'),
    (NULL, '2024-06-10 11:30:00', 'Jeremy', 'Renner', 'jeremy.renner@example.com', 'jr.renner@example.com', NULL, '678-901-2345', '778-901-2345', NULL, 'Actor', 'USA'),
    ('2024-05-05 16:45:00', NULL, 'Tom', 'Holland', 'tom.holland@example.com', 't.holland@example.com', 'tom.holland3@example.com', '789-012-3456', NULL, '889-012-3456', 'Actor', 'UK'),
    (NULL, NULL, 'Chris', 'Pratt', 'chris.pratt@example.com', NULL, NULL, '890-123-4567', NULL, NULL, 'Actor', 'USA'),
    ('2024-05-15 13:20:00', '2024-06-01 08:30:00', 'Zoe', 'Saldana', 'zoe.saldana@example.com', 'zoe.s@example.com', NULL, '901-234-5678', '001-234-5678', NULL, 'Actor', 'USA'),
    (NULL, NULL, 'Samuel', 'Jackson', 'samuel.jackson@example.com', NULL, 'samuel.jackson3@example.com', '012-345-6789', NULL, NULL, 'Actor', 'USA') ;