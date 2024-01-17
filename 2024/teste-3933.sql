-- Instale e confirgure uma máquina virtual com sistema operativo Ubunto 22.04 que lhe permita executar as seguintes tarefas:
-- 1. Criação de uma base de Dados de nome Escola, administrada pelo utilizador, admin, validado pela palavra passe, System32, no SGBD MySQL alojado em localhost.

CREATE DATABASE Escola;
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'System32';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES on Escola.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- 2. Criação de um utilizador, demoninado consultor, validado pela palavra passe, System32, mas somente com direitos de consulta de Dados.

CREATE USER 'consultor'@'localhost' IDENTIFIED BY 'System32';
GRANT SELECT on Escola.* TO 'consultor'@'localhost' WITH GRANT OPTION;

-- 3. Criação na base da dados da alinea a) das seguintes entidades/dados:

-- a) Tabela "alunos" com os campos matAluno, nome, morada, email, (chave primária matAluno)
-- b) Tabela "disciplinas" com os campos idDisciplina, nome (chave primário idDisciplina)

-- c) Inserção dos registros seguintes na tabela alunos // OS DADOS ESTAVAM NO TESTE
-- d) Insercão dos registros seguintes na tabela disciplinas // OS DADOS ESTAVAM NO TESTE

USE Escola;
CREATE TABLE alunos(matAluno integer, nomeAluno varchar(64), moradaAluno varchar(64), emailAluno varchar(64), PRIMARY KEY (matAluno));
INSERT INTO alunos(matAluno, nomeAluno, moradaAluno, emailAluno) VALUES (1234, 'Pedro Silva', 'Rua de Cima, 12', 'psilva@escola');
INSERT INTO alunos(matAluno, nomeAluno, moradaAluno, emailAluno) VALUES (2345, 'Ana Medeiros', 'Rua do Meixo, 34', 'amedeiros@escola');
INSERT INTO alunos(matAluno, nomeAluno, moradaAluno, emailAluno) VALUES (3456, 'Lucas Braga', 'Rua de Baixo, 56', 'lbraga@escola');

CREATE TABLE disciplinas(idDisciplina integer, nomeDisciplina varchar(64), PRIMARY KEY (idDisciplina));
INSERT INTO disciplinas(idDisciplina, nomeDisciplina) VALUES (123, 'Português');
INSERT INTO disciplinas(idDisciplina, nomeDisciplina) VALUES (456, 'Matemática');
INSERT INTO disciplinas(idDisciplina, nomeDisciplina) VALUES (789, 'Inglês');

-- Verificação de Dados:

SELECT * FROM alunos;
SELECT * FROM disciplinas;
SELECT user FROM mysql.user;

mysql -u admin -p
mysql -u consultor -p
