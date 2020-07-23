


SHOW DATABASES;

USE students;

SHOW TABLES;

DESC tekcamp01;

SELECT * FROM tekcamp01;

-- Creating my database to work in

CREATE DATABASE `tc1-michael-kinney-`;

USE `tc1-michael-kinney-`;

-- Creating my tekcampers table to work in

CREATE TABLE tekcampers;

CREATE TABLE IF NOT EXISTS tekcampers LIKE students.tekcamp01;

DESC tekcampers;

INSERT tekcampers
SELECT * FROM students.tekcamp01;

SELECT * FROM tekcampers;

-- Adding missing tekcampers

INSERT INTO tekcampers(first_name, last_name, gender)
VALUES ('John','Kol','M'),
('Kevin','Keesee','M'),
('Tyler','Clements','M'),
('Vimala','Murthy','F'),
('Arron','White','M'),
('Cody', 'Clark', 'M'),
('Devon', 'Brewster', 'M'),
('Gotham', 'Katta', 'M'),
('John', 'Bozarov', 'M'),
('Justin', 'Cheng', 'M'),
('Monica', 'Howard', 'F');

SELECT * FROM tekcampers;

-- Removing entries that are not current tekcampers
-- or by ID when safe mode is on in MySQL

DELETE FROM tekcampers WHERE id = 9;

DELETE FROM tekcampers WHERE id = 20;

DELETE FROM tekcampers WHERE id = 26;

SELECT * FROM tekcampers;

-- Moving gender information into the correct column

UPDATE tekcampers SET gender = education WHERE id < 28;

SELECT * FROM tekcampers;

UPDATE tekcampers SET education = NULL WHERE id < 38;

SELECT * FROM tekcampers;

-- Updating tekcamper information

UPDATE tekcampers SET gender = 'M' WHERE id = 24;

UPDATE tekcampers SET gender = 'M' WHERE id = 2;

UPDATE tekcampers SET gender = 'M' WHERE id = 15;

UPDATE tekcampers SET gender = 'F' WHERE id = 4;

UPDATE tekcampers SET gender = 'M' WHERE id = 22;

UPDATE tekcampers SET gender = 'F' WHERE id = 10;

SELECT * FROM tekcampers;

-- Adding tekcamper educations
-- or by id when safe mode is not disabled.

UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 29;

UPDATE tekcampers SET education = 'Some College' WHERE id = 19;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 1; 

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 6;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 16;

UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 14;

UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 29;

UPDATE tekcampers SET education = 'Some College' WHERE id = 12;

UPDATE tekcampers SET education = 'Some College' WHERE id = 24;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 4;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 35;

UPDATE tekcampers SET education = 'Masters Degree' WHERE id = 31;

UPDATE tekcampers SET education = 'Associates Degree' WHERE id = 17;

UPDATE tekcampers SET education = 'Doctorate' WHERE id = 10;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 5;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 11;

UPDATE tekcampers SET education = 'Some College' WHERE id = 7;

UPDATE tekcampers SET education = 'Some College' WHERE id = 33;

UPDATE tekcampers SET education = 'Some College' WHERE id = 15;

UPDATE tekcampers SET education = 'Some College' WHERE id = 37;

UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 25;

UPDATE tekcampers SET education = 'Associates Degree' WHERE id = 8;

UPDATE tekcampers SET education = 'Masters Degree' WHERE id = 21;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 18;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 36;

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 22;

UPDATE tekcampers SET education = 'Masters Degree' WHERE id = 23;

-- Multiple queries

SELECT * FROM tekcampers;

SELECT * FROM tekcampers WHERE CHAR_LENGTH(last_name) > 7;

SELECT * FROM tekcampers ORDER BY first_name; 

SELECT * FROM tekcampers ORDER BY last_name;

SELECT * FROM tekcampers WHERE gender = 'M';

SELECT * FROM tekcampers WHERE gender = 'F';

SELECT * FROM tekcampers WHERE education = 'Masters Degree';

SELECT * FROM tekcampers WHERE education = 'Bachelors Degree';

SELECT * FROM tekcampers WHERE education = 'Associates Degree';

SELECT * FROM tekcampers WHERE education != 'Associates Degree' AND education != 'Bachelors Degree' AND education != 'Masters Degree' AND education != 'Doctorate' OR education IS NULL;

DESC tekcampers; 

-- Adding TA table

CREATE TABLE `ta-emelios`(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
gender CHAR(1),
education VARCHAR(20));

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'abigail';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'adam';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'christian';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'devon';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'gabe';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'jose';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'julian';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'marcelo';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'michael';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'monica';

INSERT INTO `ta-emelios`(first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education FROM tekcampers
WHERE first_name = 'phoenix';

SELECT * FROM `ta-emelios`;

CREATE TABLE Hobby (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20)NOT NULL
);

INSERT INTO Hobby(name)
VALUES ('Reading'),
('Cattle Rustling'),
('Listening to Music'),
('Engineering w/ Kids'),
('Golfing'),
('Jiu Jitsu'),
('Eating'),
('Motorcycle Riding'),
('Writing'),
('Pickle Ball'),
('Interior Decoration'),
('Working Out'),
('Playing Soccer'),
('Aerial Yoga'),
('Gaming'),
('Longboarding'),
('Playing the piano'),
('Hockey'),
('Growing Hot Peppers'),
('Gardening'),
('Cooking'), 
('Running'),
('Playing Soccer'),
('Eating');

ALTER TABLE tekcampers ADD hobby INT;

UPDATE tekcampers SET hobby = 1 WHERE id = 1;
UPDATE tekcampers SET hobby = 2 WHERE id = 2;
UPDATE tekcampers SET hobby = 1 WHERE id = 3;
UPDATE tekcampers SET hobby = 3 WHERE id = 4;
UPDATE tekcampers SET hobby = 4 WHERE id = 5;
UPDATE tekcampers SET hobby = 5 WHERE id = 6;
UPDATE tekcampers SET hobby = 6 WHERE id = 7;
UPDATE tekcampers SET hobby = 7 WHERE id = 8;
UPDATE tekcampers SET hobby = 8 WHERE id = 10;
UPDATE tekcampers SET hobby = 9 WHERE id = 11;
UPDATE tekcampers SET hobby = 10 WHERE id = 12;
UPDATE tekcampers SET hobby = 20 WHERE id = 13;
UPDATE tekcampers SET hobby = 15 WHERE id = 14;
UPDATE tekcampers SET hobby = 15 WHERE id = 15;
UPDATE tekcampers SET hobby = 13 WHERE id = 16;
UPDATE tekcampers SET hobby = 14 WHERE id = 17;
UPDATE tekcampers SET hobby = 15 WHERE id = 18;
UPDATE tekcampers SET hobby = 1 WHERE id = 19;
UPDATE tekcampers SET hobby = 16 WHERE id = 21;
UPDATE tekcampers SET hobby = 15 WHERE id = 22;
UPDATE tekcampers SET hobby = 17 WHERE id = 23;
UPDATE tekcampers SET hobby = 15 WHERE id = 24;
UPDATE tekcampers SET hobby = 18 WHERE id = 25;
UPDATE tekcampers SET hobby = 1 WHERE id = 27;
UPDATE tekcampers SET hobby = 1 WHERE id = 28;
UPDATE tekcampers SET hobby = 15 WHERE id = 29;
UPDATE tekcampers SET hobby = 19 WHERE id = 30;
UPDATE tekcampers SET hobby = 20 WHERE id = 31;
UPDATE tekcampers SET hobby = 1 WHERE id = 32;
UPDATE tekcampers SET hobby = 21 WHERE id = 33;
UPDATE tekcampers SET hobby = 1 WHERE id = 34;
UPDATE tekcampers SET hobby = 22 WHERE id = 35;
UPDATE tekcampers SET hobby = 23 WHERE id = 36;
UPDATE tekcampers SET hobby = 7 WHERE id = 37;
UPDATE tekcampers SET hobby = 7 WHERE id = 38;

ALTER TABLE `ta-emelios` ADD hobby INT;

UPDATE `ta-emelios` SET id = 1 WHERE id = 1;
UPDATE `ta-emelios` SET id = 6 WHERE id = 2;
UPDATE `ta-emelios` SET id = 24 WHERE id = 3;
UPDATE `ta-emelios` SET id = 34 WHERE id = 4;
UPDATE `ta-emelios` SET id = 2 WHERE id = 5;
UPDATE `ta-emelios` SET id = 16 WHERE id = 6;
UPDATE `ta-emelios` SET id = 12 WHERE id = 7;
UPDATE `ta-emelios` SET id = 7 WHERE id = 8;
UPDATE `ta-emelios` SET id = 22 WHERE id = 9;
UPDATE `ta-emelios` SET id = 38 WHERE id = 10;
UPDATE `ta-emelios` SET id = 17 WHERE id = 11;
-- update TA table ids with tekcamp ids ^^^
-- then update hobby column with correct id 
UPDATE `ta-emelios` SET hobby = 1 WHERE id = 1;
UPDATE `ta-emelios` SET hobby = 2 WHERE id = 2;
UPDATE `ta-emelios` SET hobby = 4 WHERE id = 5;
UPDATE `ta-emelios` SET hobby = 6 WHERE id = 7;
UPDATE `ta-emelios` SET hobby = 10 WHERE id = 12;
UPDATE `ta-emelios` SET hobby = 13 WHERE id = 16;
UPDATE `ta-emelios` SET hobby = 14 WHERE id = 17;
UPDATE `ta-emelios` SET hobby = 15 WHERE id = 22;
UPDATE `ta-emelios` SET hobby = 15 WHERE id = 24;
UPDATE `ta-emelios` SET hobby = 1 WHERE id = 34;
UPDATE `ta-emelios` SET hobby = 7 WHERE id = 38;


SELECT * FROM Hobby;

SELECT * FROM tekcampers;

SELECT * FROM `ta-emelios`;

SELECT Hobby.name, `ta-emelios`.first_name 
	FROM Hobby 
    RIGHT JOIN `ta-emelios` 
    ON Hobby.id =`ta-emelios`.hobby;
    
ALTER TABLE tekcampers 
ADD bootcamp VARCHAR(20);
    
UPDATE tekcampers SET bootcamp = 'Coding Dojo' WHERE id = 6;
UPDATE tekcampers SET bootcamp = 'Coding Dojo' WHERE id = 7;
UPDATE tekcampers SET bootcamp = 'Coding Dojo' WHERE id = 12;
UPDATE tekcampers SET bootcamp = 'DevMountain' WHERE id = 17;
UPDATE tekcampers SET bootcamp = 'SMU Coding Bootcamp' WHERE id = 21;
UPDATE tekcampers SET bootcamp = 'DevMountain' WHERE id = 25;
UPDATE tekcampers SET bootcamp = 'Trilogy Education' WHERE id = 33;
    
ALTER TABLE `ta-emelios` ADD bootcamp VARCHAR(20);

UPDATE `ta-emelios` SET bootcamp = 'Coding Dojo' WHERE id = 6;
UPDATE `ta-emelios` SET bootcamp = 'Coding Dojo' WHERE id = 7;
UPDATE `ta-emelios` SET bootcamp = 'Coding Dojo' WHERE id = 12;
UPDATE `ta-emelios` SET bootcamp = 'DevMountain' WHERE id = 17;
UPDATE `ta-emelios` SET bootcamp = 'SMU Coding Bootcamp' WHERE id = 21;
UPDATE `ta-emelios` SET bootcamp = 'DevMountain' WHERE id = 25;
UPDATE `ta-emelios` SET bootcamp = 'Trilogy Education' WHERE id = 33;

UPDATE `ta-emelios` 
	SET bootcamp = 
    ( SELECT bootcamp FROM tekcampers WHERE id = `ta-emelios`.id);
    -- safe mode enabled, hard code instead
    
    
SELECT * FROM Hobby;

SELECT * FROM tekcampers;

SELECT * FROM `ta-emelios`;
    











