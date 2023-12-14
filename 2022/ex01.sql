CREATE DATABASE mcabral_AVALIACAO;
USE mcabral_AVALIACAO;
DESC ALUNO;
CREATE TABLE ALUNO(id integer, pnome varchar(64), unome varchar(64),localidade varchar(64));
INSERT INTO ALUNO(id, pnome, unome, localidade) VALUES (1, 'Marta', 'Lopes', 'Lagoa');
INSERT INTO ALUNO(id, pnome, unome, localidade) VALUES (1, 'José', 'Maria', 'Lisboa');
INSERT INTO ALUNO(id, pnome, unome, localidade) VALUES (2, 'Francisco', 'Silva', 'Porto');
SELECT * FROM ALUNO;
