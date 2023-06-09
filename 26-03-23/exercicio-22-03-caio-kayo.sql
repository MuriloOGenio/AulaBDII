# Caio peixoto e Kayo Victor

DROP DATABASE IF EXISTS Editora;
CREATE DATABASE IF NOT EXISTS Editora;
USE Editora;

CREATE TABLE Livrarias (
	IDLivraria INT NOT NULL
);

CREATE TABLE NotasFiscais (
	CodigoVenda INT NOT NULL PRIMARY KEY,
	DataVenda DATE NOT NULL,
	IDLivraria INT NOT NULL
);

CREATE TABLE ItensNF (
	CodigoVenda INT NOT NULL,
	IDLivro INT NOT NULL,
	QtdeVendida INT NOT NULL
);

CREATE TABLE Livros (
	IDLivro INT NOT NULL PRIMARY KEY,
	Autor VARCHAR(50) NOT NULL
);

ALTER TABLE Livrarias 
MODIFY COLUMN IDLivraria INT NOT NULL PRIMARY KEY;

ALTER TABLE Livrarias 
ADD COLUMN NomeLivraria VARCHAR(30) NOT NULL,
ADD COLUMN Endereco VARCHAR(100) NOT NULL,
ADD COLUMN CNPJ VARCHAR(14) NOT NULL UNIQUE;

ALTER TABLE notasfiscais
ADD CONSTRAINT FK_NotasFiscais_Livrarias FOREIGN KEY  (IDLivraria)
REFERENCES Livrarias(IDLivraria);

ALTER TABLE Livros 
ADD COLUMN TituloLivro VARCHAR(50) NOT NULL AFTER IDLivro, 
ADD COLUMN PrecoUnitario DECIMAL(5,3) NOT NULL; 

ALTER TABLE ItensNF
ADD CONSTRAINT PK_ItensNF PRIMARY KEY (CodigoVenda, idLivro),
ADD CONSTRAINT FK_ItensNF_Livros FOREIGN KEY (IDLivro)
REFERENCES Livros(IDLivro),
ADD CONSTRAINT FK_ItensNF_NotasFiscais FOREIGN KEY (CodigoVenda)
REFERENCES notasfiscais(CodigoVenda);
