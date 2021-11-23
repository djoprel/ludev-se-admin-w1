CREATE SCHEMA IF NOT EXISTS `SoftwareEngineering` ;
USE `SoftwareEngineering`; -- select the right database.

CREATE TABLE IF NOT EXISTS Project(
pid INT AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
client VARCHAR(100) NOT NULL,
descr TEXT,
active BOOL, -- is the project visible for users? True if ready to show on site False if not.
amount_available INT DEFAUlT 1,
max_available INT DEFAULT 1, -- admin can specify here how many of this project are available to the teams. Default is 1.
PRIMARY KEY(pid));

CREATE TABLE IF NOT EXISTS Account(
uid INT AUTO_INCREMENT,
username VARCHAR(64) UNIQUE NOT NULL,
password VARCHAR(60) NOT NULL, -- hash
PRIMARY KEY(uid));

CREATE TABLE IF NOT EXISTS Team(
tid INT AUTO_INCREMENT,
teamname VARCHAR(64) NOT NULL,
pid INT REFERENCES Project(pid) ON DELETE SET NULL,
tgrade INT,
PRIMARY KEY (tid));

CREATE TABLE IF NOT EXISTS User(
uid INT REFERENCES Account(uid) ON DELETE CASCADE,
tid INT DEFAULT NULL REFERENCES Team(tid) ON DELETE SET NULL,
initials VARCHAR(12) NOT NULL, -- initialen
surname VARCHAR(64) NOT NULL, -- achternaam
study VARCHAR(64) NOT NULL,
bonusGrade1 INT DEFAULT NULL,
bonusGrade2 INT DEFAULT NULL,
privileges BOOL DEFAULT 0, -- user privilege = 0 admin privilege = 1.
PRIMARY KEY (uid));

CREATE TABLE IF NOT EXISTS Bid(
tid INT NOT NULL REFERENCES Team(tid) ON DELETE CASCADE, -- delete bid when team gets deleted
pid INT NOT NULL,
motivation TEXT NOT NULL, 
choice INT NOT NULL CHECK (choice >= 1 AND choice <= 3),
mgrade INT,
PRIMARY KEY(pid, tid)
);

CREATE TABLE IF NOT EXISTS SessionID(
sid INT,
username VARCHAR(60),
creation_date DATETIME,
expiration_date DATETIME,
last_acces_data VARCHAR(128), -- last accesed http path
PRIMARY KEY (sid)
);