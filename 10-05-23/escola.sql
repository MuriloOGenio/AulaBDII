DROP DATABASE IF EXISTS Escola;
CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;
CREATE TABLE Alunos(
	idaluno INT NOT NULL AUTO_INCREMENT ,
	nomealuno VARCHAR (30) NOT NULL,
	endereco VARCHAR (50) NOT NULL,
	email VARCHAR (40) NULL,
	PRIMARY KEY (idaluno)
);

INSERT INTO Alunos
VALUES(null,'Astrogildo', 'Rua XIII', 'eu@ele.com');

INSERT INTO Alunos
VALUES (null,'Berisvaldo','Av. 3','tu@nos.com');

INSERT INTO Alunos
VALUES (null,'Gumercindo','Rua Azul',null);

INSERT INTO Alunos
VALUES (null,'Pafuncia','Rua Azul','go@go.edu');

INSERT INTO Alunos
VALUES (null,'Tiburcio','Av. Brasil',null);

INSERT INTO Alunos
VALUES (null,'Robervaldo','Av. Peru','el@cabron');

DELETE FROM Alunos
WHERE idaluno ='6';

DELETE FROM Alunos
WHERE endereco ='Rua Azul';

DELETE FROM Alunos
WHERE idaluno < '3';

DELETE FROM Alunos
WHERE idaluno BETWEEN '2' AND '5';

#DELETE FROM Alunos;

UPDATE Alunos
SET email = 'guma@bol.com'
WHERE idaluno = '15';

UPDATE Alunos
SET nomealuno = 'Valdo', endereco = 'X'
WHERE idaluno = '18';

ALTER TABLE Alunos
ADD COLUMN status INT NOT NULL DEFAULT 1;

UPDATE Alunos
SET status = '0'
WHERE idaluno = '16';