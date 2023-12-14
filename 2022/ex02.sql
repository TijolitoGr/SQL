UPDATE ALUNO SET id = 2 WHERE ALUNO.pnome = 'José';
UPDATE ALUNO SET localidade = 'Lisboa' WHERE ALUNO.pnome = 'Francisco';
INSERT INTO ALUNO(id, pnome, unome, localidade) VALUES (2, 'Marcelino', 'Silva', 'Faro');
UPDATE ALUNO SET localidade = 'Viseu' WHERE ALUNO.unome = 'Silva';
DELETE FROM ALUNO WHERE ALUNO.id = 1;
SELECT * FROM ALUNO;
