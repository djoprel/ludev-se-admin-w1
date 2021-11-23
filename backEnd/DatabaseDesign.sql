CREATE DATABASE IF NOT EXISTS`SoftwareEngineering` ;

USE SoftwareEngineering;

CREATE TABLE IF NOT EXISTS Project(
pid INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
client VARCHAR(100) NOT NULL,
descr TEXT,
active BOOL);


INSERT INTO Project(title, client, descr, active) VALUES ("Leidsche Flesch Bookkeeping","De Leidsche Flesch","Als studievereniging De Leidsche Flesch zijn wij uniek doordat wij al onze ICT zelf ontwikkelen en bijhouden. Denk hierbij aan website, ledenadministratie, boekhouding en een app. Alle mensen die dit onderhouden vormen samen het ICT-gilde. Dit jaar wordt voor het eerst de boekhouding gedigitaliseerd. Een van de systemen die hiervoor nodig is is een manier om bestanden (veilig) naar de kascontrolecommissie te versturen. Met het oog op fraude is het belangrijk dat de juiste mensen bij de juiste files kunnen, en er niet per ongeluk files kunnen worden verwijderd. Doel van het project is om een dergelijk systeem te bouwen, wat daarna ook echt in de administratie van de Flesch gebruikt zal worden.", TRUE);
INSERT INTO Project(title, client, descr, active) VALUES ("Business Simulation","LIACS","In the courage Integration : Business &IT alignment we run a business simulation in order to teach how business and it can come together. Currently all the material exists of separate documents. It would be great to have a website where we can run a business simulation with students in their assignments.",TRUE);

-- DROP TABLE Project;
-- TRUNCATE TABLE Project;
-- SELECT * FROM Project;

-- DESCRIBE Project;