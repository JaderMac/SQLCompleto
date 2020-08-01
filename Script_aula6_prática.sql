USE curso_sql;
SELECT * FROM funcionarios;

SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1900;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1900 AND departamento = 'Juridico';

SELECT SUM(salario) FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE departamento = 'Ti';

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'Ti';

SELECT MAX(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios WHERE departamento = 'Ti';

SELECT MIN(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios WHERE departamento = 'Ti';

SELECT departamento FROM funcionarios;
SELECT DISTINCT(departamento) FROM funcionarios;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios ORDER BY nome; 
SELECT * FROM funcionarios ORDER BY departamento; 
SELECT * FROM funcionarios ORDER BY departamento, salario;
SELECT * FROM funcionarios ORDER BY departamento, salario DESC;
SELECT * FROM funcionarios ORDER BY departamento DESC, salario DESC;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios LIMIT 2;
SELECT * FROM funcionarios LIMIT 2 OFFSET 1;
SELECT * FROM funcionarios LIMIT 1, 2;

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'TI';
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'JURIDICO';


SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento;
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento
HAVING AVG(salario) < 2000;

#Subquerye -> UMA CONSULTA DENTRO DA OUTRA
SELECT nome FROM funcionarios 
WHERE departamento IN
(
SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario) < 1900
);


