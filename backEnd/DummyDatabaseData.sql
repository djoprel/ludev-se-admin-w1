-- Empties all tables
TRUNCATE Account;
TRUNCATE Project;
TRUNCATE Bid;
TRUNCATE User;
TRUNCATE Team;

-- Project, dummy data (10)
INSERT INTO Project(title, client, descr, active) VALUES("Leidsche Flesch Bookkeeping","De Leidsche Flesch",
 "Als studievereniging De Leidsche Flesch zijn wij uniek doordat
 wij al onze ICT zelf ontwikkelen en bijhouden. Denk hierbij aan
 website, ledenadministratie, boekhouding en een app. Alle mensen
 die dit onderhouden vormen samen het ICT-gilde. Dit jaar wordt
 voor het eerst de boekhouding gedigitaliseerd. Een van de
 systemen die hiervoor nodig is is een manier om bestanden
 (veilig) naar de kascontrolecommissie te versturen. Met
 het oog op fraude is het belangrijk dat de juiste mensen
 bij de juiste files kunnen, en er niet per ongeluk files
 kunnen worden verwijderd. Doel van het project is om een
 dergelijk systeem te bouwen, wat daarna ook echt in de
 administratie van de Flesch gebruikt zal worden.", TRUE);

INSERT INTO Project(title, client, descr, active) VALUES ("Business Simulation","LIACS","In the courage Integration :
 Business &IT alignment we run a business simulation in order
 to teach how business and it can come together. Currently all
 the material exists of separate documents. It would be great 
 to have a website where we can run a business simulation with
 students in their assignments.",TRUE);
 
INSERT INTO Project(title, client, descr, active) VALUES('Profiling human activity',
'Leids Universitair Medisch Centrum',
'A data visualization tool for data collected within the Profiling Human Activity project.
The tool allows the user to quickly compare group and individual behaviour before and after a medical intervention.',TRUE);

INSERT INTO Project(title, client, descr, active) VALUES('Virtual Conference',
'Universiteit Leiden',
'The purpose of this project is to create an application in which the feeling of an "in-real-life" conference can be replicated online.
 Users can roam in virtual rooms and strike conversations with each other.',TRUE);

INSERT INTO Project(title, client, descr, active, amount_available) VALUES('SE Administration',
'Universiteit Leiden',
'A new website for the SE course. SE teachers can use the website to automatically assign projects to students groups.
 Clients can upload their projects. Students can create teams and submit their project bids.', TRUE, 2);

INSERT INTO Project(title, client, descr, active) VALUES('Children Stories',
'Universiteit Leiden',
'A voice-recorder app aimed at recording childrens stories, and replaying them easily.
 Researchers use this tool for studying the story telling capabilities of young children.', TRUE);

INSERT INTO Project(title, client, descr, active) VALUES('PQRS',
'Universiteit Leiden',
'The goal of this project was to digitize the Progress,
 Quality and Research Support program for PhD students at Leiden university.', TRUE);

INSERT INTO Project(title, client, descr, active) VALUES('Speed estimation Algorithmics',
'Universiteit Leiden',
'Create an algorithm which can accurately estimate the current speed of the user.
 This can be used by speed skaters to further develop their performance.', TRUE);

INSERT INTO Project(title, client, descr, active) VALUES('Geographical data visualization',
'Ministerie van Infrastructuur en Waterstaat','To facilitate research at a Dutch government organization,
 build a tool to import geographical data points and display them on a map.
 The product is set up to be modular, so make sure it can be altered to work with any data set.',TRUE);

INSERT INTO Project(title, client, descr, active) VALUES('GitHub visualization tool','Software Improvement Group',
'The Github-Visualization tool enables the visualization of Github projects.
 It should display a graph of the files in a project,
 which visualizes who did what and when, and which files are connected.',TRUE);
 
-- Account, dummy data (60)
INSERT INTO Account(username, password) VALUES('s2460147','SEww0000!');
INSERT INTO Account(username, password) VALUES('s2460148','SEww1000!');
INSERT INTO Account(username, password) VALUES('s2460149','SEww2000!');
INSERT INTO Account(username, password) VALUES('s2460150','SEww3000!');
INSERT INTO Account(username, password) VALUES('s2460151','SEww4000!');
INSERT INTO Account(username, password) VALUES('s2460152','SEww5000!');
INSERT INTO Account(username, password) VALUES('s2460153','SEww6000!');
INSERT INTO Account(username, password) VALUES('s2460154','SEww7000!');
INSERT INTO Account(username, password) VALUES('s2460155','SEww8000!');
INSERT INTO Account(username, password) VALUES('s2460156','SEww9000!');
INSERT INTO Account(username, password) VALUES('s2592991','$2b$14$H7sJFrCGwQOLAChLjczrS.XFj3sG3Jcb1D5.pSePK7zg8JbQhrcEa');
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2592991' and password = '$2b$14$H7sJFrCGwQOLAChLjczrS.XFj3sG3Jcb1D5.pSePK7zg8JbQhrcEa';

INSERT INTO Account(username, password) VALUES('s2560147','SEww0000!');
INSERT INTO Account(username, password) VALUES('s2560148','SEww1000!');
INSERT INTO Account(username, password) VALUES('s2560149','SEww2000!');
INSERT INTO Account(username, password) VALUES('s2560150','SEww3000!');
INSERT INTO Account(username, password) VALUES('s2560151','SEww4000!');
INSERT INTO Account(username, password) VALUES('s2560152','SEww5000!');
INSERT INTO Account(username, password) VALUES('s2560153','SEww6000!');
INSERT INTO Account(username, password) VALUES('s2560154','SEww7000!');
INSERT INTO Account(username, password) VALUES('s2560155','SEww8000!');
INSERT INTO Account(username, password) VALUES('s2560156','SEww9000!');

INSERT INTO Account(username, password) VALUES('s2660147','SEww0000!');
INSERT INTO Account(username, password) VALUES('s2660148','SEww1000!');
INSERT INTO Account(username, password) VALUES('s2660149','SEww2000!');
INSERT INTO Account(username, password) VALUES('s2660150','SEww3000!');
INSERT INTO Account(username, password) VALUES('s2660151','SEww4000!');
INSERT INTO Account(username, password) VALUES('s2660152','SEww5000!');
INSERT INTO Account(username, password) VALUES('s2660153','SEww6000!');
INSERT INTO Account(username, password) VALUES('s2660154','SEww7000!');
INSERT INTO Account(username, password) VALUES('s2660155','SEww8000!');
INSERT INTO Account(username, password) VALUES('s2660156','SEww9000!');

INSERT INTO Account(username, password) VALUES('s2760147','SEww0000!');
INSERT INTO Account(username, password) VALUES('s2760148','SEww1000!');
INSERT INTO Account(username, password) VALUES('s2760149','SEww2000!');
INSERT INTO Account(username, password) VALUES('s2760150','SEww3000!');
INSERT INTO Account(username, password) VALUES('s2760151','SEww4000!');
INSERT INTO Account(username, password) VALUES('s2760152','SEww5000!');
INSERT INTO Account(username, password) VALUES('s2760153','SEww6000!');
INSERT INTO Account(username, password) VALUES('s2760154','SEww7000!');
INSERT INTO Account(username, password) VALUES('s2760155','SEww8000!');
INSERT INTO Account(username, password) VALUES('s2760156','SEww9000!');

INSERT INTO Account(username, password) VALUES('s2860147','SEww0000!');
INSERT INTO Account(username, password) VALUES('s2860148','SEww1000!');
INSERT INTO Account(username, password) VALUES('s2860149','SEww2000!');
INSERT INTO Account(username, password) VALUES('s2860150','SEww3000!');
INSERT INTO Account(username, password) VALUES('s2860151','SEww4000!');
INSERT INTO Account(username, password) VALUES('s2860152','SEww5000!');
INSERT INTO Account(username, password) VALUES('s2860153','SEww6000!');
INSERT INTO Account(username, password) VALUES('s2860154','SEww7000!');
INSERT INTO Account(username, password) VALUES('s2860155','SEww8000!');
INSERT INTO Account(username, password) VALUES('s2860156','SEww9000!');

INSERT INTO Account(username, password) VALUES('s2960147','SEww0000!');
INSERT INTO Account(username, password) VALUES('s2960148','SEww1000!');
INSERT INTO Account(username, password) VALUES('s2960149','SEww2000!');
INSERT INTO Account(username, password) VALUES('s2960150','SEww3000!');
INSERT INTO Account(username, password) VALUES('s2960151','SEww4000!');
INSERT INTO Account(username, password) VALUES('s2960152','SEww5000!');
INSERT INTO Account(username, password) VALUES('s2960153','SEww6000!');
INSERT INTO Account(username, password) VALUES('s2960154','SEww7000!');
INSERT INTO Account(username, password) VALUES('s2960155','SEww8000!');
INSERT INTO Account(username, password) VALUES('s2960156','SEww9000!');

-- User, dummy data
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460147' and password = 'SEww0000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460148' and password = 'SEww1000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460149' and password = 'SEww2000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460150' and password = 'SEww3000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460151' and password = 'SEww4000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460152' and password = 'SEww5000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460153' and password = 'SEww6000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460154' and password = 'SEww7000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460155' and password = 'SEww8000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2460156' and password = 'SEww9000!';


INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560147' and password = 'SEww0000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560148' and password = 'SEww1000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560149' and password = 'SEww2000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560150' and password = 'SEww3000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560151' and password = 'SEww4000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560152' and password = 'SEww5000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560153' and password = 'SEww6000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560154' and password = 'SEww7000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560155' and password = 'SEww8000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2560156' and password = 'SEww9000!';

INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660147' and password = 'SEww0000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660148' and password = 'SEww1000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660149' and password = 'SEww2000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660150' and password = 'SEww3000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660151' and password = 'SEww4000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660152' and password = 'SEww5000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660153' and password = 'SEww6000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660154' and password = 'SEww7000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660155' and password = 'SEww8000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2660156' and password = 'SEww9000!';

INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760147' and password = 'SEww0000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760148' and password = 'SEww1000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760149' and password = 'SEww2000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760150' and password = 'SEww3000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760151' and password = 'SEww4000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760152' and password = 'SEww5000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760153' and password = 'SEww6000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760154' and password = 'SEww7000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760155' and password = 'SEww8000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica','I.N.I','Achternaam' FROM Account WHERE username = 's2760156' and password = 'SEww9000!';

INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860147' and password = 'SEww0000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860148' and password = 'SEww1000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860149' and password = 'SEww2000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860150' and password = 'SEww3000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860151' and password = 'SEww4000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860152' and password = 'SEww5000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860153' and password = 'SEww6000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860154' and password = 'SEww7000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860155' and password = 'SEww8000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Bioinformatica','I.N.I','Achternaam' FROM Account WHERE username = 's2860156' and password = 'SEww9000!';

INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960147' and password = 'SEww0000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960148' and password = 'SEww1000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960149' and password = 'SEww2000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960150' and password = 'SEww3000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960151' and password = 'SEww4000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960152' and password = 'SEww5000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960153' and password = 'SEww6000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960154' and password = 'SEww7000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960155' and password = 'SEww8000!';
INSERT INTO User(uid,study,initials,surname) SELECT uid,'Informatica & Economie','I.N.I','Achternaam' FROM Account WHERE username = 's2960156' and password = 'SEww9000!';

-- Team, dummy data (11)
INSERT INTO Team(teamname, pid) VALUES('Ducati panigale', 10);
INSERT INTO Team(teamname, pid) VALUES('Yamaha mt 07', 9);
INSERT INTO Team(teamname, pid) VALUES('HondaCBR650', 8);
INSERT INTO Team(teamname, pid) VALUES('Ducati Monster', 7);
INSERT INTO Team(teamname, pid) VALUES('BMW S1000RR', 6);
INSERT INTO Team(teamname, pid) VALUES('Ctr+Alt+Develop', 5);
INSERT INTO Team(teamname, pid) VALUES('Ctr+Alt+Develop groep 2', 5);
INSERT INTO Team(teamname, pid) VALUES('KTM 790 DUKE', 4);
INSERT INTO Team(teamname, pid) VALUES('Ducati Diavel', 3);
INSERT INTO Team(teamname, pid) VALUES('Pimpelpaars', 2);
INSERT INTO Team(teamname, pid) VALUES('Bibidi babidi doo', 1);

-- Update user tid
UPDATE User SET User.tid = 1 WHERE User.uid < 7;
UPDATE User SET User.tid = 2 WHERE User.uid >= 7 and User.uid < 13;
UPDATE User SET User.tid = 3 WHERE User.uid >= 13 and User.uid < 19;
UPDATE User SET User.tid = 4 WHERE User.uid >= 19 and User.uid < 25;
UPDATE User SET User.tid = 5 WHERE User.uid >= 25 and User.uid < 31;
UPDATE User SET User.tid = 6 WHERE User.uid >= 31 and User.uid < 37;
UPDATE User SET User.tid = 7 WHERE User.uid >= 37 and User.uid < 43;
UPDATE User SET User.tid = 8 WHERE User.uid >= 43 and User.uid < 48;
UPDATE User SET User.tid = 9 WHERE User.uid >= 48 and User.uid < 54;
UPDATE User SET User.tid = 10 WHERE User.uid >= 54 and User.uid < 58;
UPDATE User SET User.tid = 11 WHERE User.uid >= 58 and User.uid < 61;
-- Bid, dummy data (11)
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (1, 10, "motivatie voor project", 1, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (2, 8, "motivatie voor project", 1, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (3, 8, "motivatie voor project", 1, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (4, 7, "motivatie voor project", 1, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (5, 6, "motivatie voor project", 1, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (6, 5, "motivatie voor project", 1, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (7, 5, "motivatie voor project", 1, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (8, 10, "motivatie voor project", 1, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (9, 3, "motivatie voor project", 1, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (10, 8, "motivatie voor project", 1, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (11, 1, "motivatie voor project", 1, 7);

INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (1, 8, "motivatie voor project", 2, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (2, 9, "motivatie voor project", 2, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (3, 7, "motivatie voor project", 2, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (4, 2, "motivatie voor project", 2, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (5, 1, "motivatie voor project", 2, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (6, 4, "motivatie voor project", 2, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (7, 2, "motivatie voor project", 2, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (8, 7, "motivatie voor project", 2, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (9, 6, "motivatie voor project", 2, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (10, 5, "motivatie voor project", 2, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (11, 2, "motivatie voor project", 2, 7);

INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (1, 7, "motivatie voor project", 3, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (2, 6, "motivatie voor project", 3, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (3, 2, "motivatie voor project", 3, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (4, 1, "motivatie voor project", 3, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (5, 2, "motivatie voor project", 3, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (6, 3, "motivatie voor project", 3, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (7, 10, "motivatie voor project", 3, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (8, 4, "motivatie voor project", 3, 8);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (9, 7, "motivatie voor project", 3, 7);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (10, 4, "motivatie voor project", 3, 6);
INSERT INTO Bid(tid, pid, motivation, choice, mgrade) VALUES (11, 3, "motivatie voor project", 3, 7);

-- SELECT * FROM Bid;
-- SELECT * FROM User;
