/*comentários 
ficam aqui*/
 
-- ou assim
 
 
CREATE DATABASE introducao;
 
CREATE TABLE Aluno(
ID INT auto_increment,
Nome VARCHAR(50),
Morada varchar(50),
CP CHAR(8),
Telefone INT,
DataNascimento DATE,
primary key (ID)
);

ALTER table Aluno
add Email varchar(59)
;

ALTER table Aluno
modify Email varchar(50) not null after Telefone;

-- DROP DATABASE introducao;
-- DROP TABLE
-- DROP 
/* ALTER TABLE <NOME>
ADD ATRIBUTO DOMINIO RESTRIÇÕES
MODIFY ATRIBUTO DOMINIO RESTRIÇÕES*/