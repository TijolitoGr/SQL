------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 3 - 2023
-- sudo apt install mariadb-server - Instalar
-- sudo mysql_secure_installation - Menu de Segurança
-- sudo mysql -u root - Entrar
-- mysql -u root -p // Pedir para Entrar no mySQL pedindo palavra-passe
----------------------------------------------------------------------
CREATE USER 'utilizador (mfc) '@'localhost' IDENTIFIED BY 'password';
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE ALUNO ADD "noma_coluna" varchar(64) - Adicionar uma Coluna
ALTER TABLE ALUNO DROP "nome_coluna" - Remover uma Coluna
ALTER - Significa Alterar Estrutura
DROP - Eliminar Danco de Dados
SHOW TABLES - Mostrar Banco de Dados
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE GESXPTO;
USE GESXPTO
CREATE TABLE venda(id integer, artigo varchar(64), vend integer, qtd integer, preco integer, vendedor varchar(64));
INSERT INTO venda(id, artigo, vend, qtd, preco, vendedor) VALUES (001, 'Monitor', 101, 2, 219, 'ACSM1');
INSERT INTO venda(id, artigo, vend, qtd, preco, vendedor) VALUES (002, 'Webcam', 102, 2, 19, 'ACSM2');
ALTER TABLE venda ADD cor_artigo varchar(64);
ALTER TABLE venda DROP vendedor;
SELECT * FROM venda

-- a) Criar uma Tabela no DATABASE: "Estadantes" com um id 'numero cadastro' inteiro sendo ele NULOcom uma designação 'auto_increment'.
-- id nome em varchar com um limite de 35 caracteres sem ser nulo
-- turma inteiro
-- sendo o id primario o 'numerocadastro'

-- b) Alterar uma (coluna) Tabela específica, eliminando-a em um DATABASE específico
-- Criar uma Coluna em uma Table em um DATABASE como um varchar de limite 3 (varchar(3))

-- c) DESC serve para mostrar a beleza da Tabela que foi criada

CREATE DATABASE BoaVida;
USE BoaVida
CREATE TABLE empregados(id integer, primeiro_nome varchar(64), ultimo_nome varchar(64), nif integer, departamento_id integer, gestor integer, salario float);
INSERT INTO empregados(id, primeiro_nome, ultimo_nome, nif, departamento_id, gestor, salario) VALUES (1, 'Fransisco', 'Alves', 101101101, 10, 202, 3000);
INSERT INTO empregados(id, primeiro_nome, ultimo_nome, nif, departamento_id, gestor, salario) VALUES (2, 'Maria', 'Ferreira', 202020202, 20, 101, 2500);
INSERT INTO empregados(id, primeiro_nome, ultimo_nome, nif, departamento_id, gestor, salario) VALUES (3, 'Pedro', 'Marques', 303030303, 20, 101, 2300);
SELECT * FROM empregados;

-- a):
SELECT primeiro_nome, ultimo_nome, departamento_id
FROM empregados
WHERE departamento_id IN (30,40)
ORDER BY departamento_id ASC, primeiro_nome ASC, ultimo_nome ASC;
-- b):
UPDATE empregados SET salario = 8000 WHERE id = 3 AND salario <= 2000;

-- © Martim Cabral | 2007-2023
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
