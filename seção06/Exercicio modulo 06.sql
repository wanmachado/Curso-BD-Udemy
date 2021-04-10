/* exercicio */

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */


/* #1 Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas */

--USANDO OR
SELECT COUNT(*),DEPARTAMENTO FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'FILMES' OR DEPARTAMENTO = 'ROUPAS'
GROUP BY DEPARTAMENTO;

--USANDO IN
SELECT COUNT(*) FROM FUNCIONARIOS
WHERE DEPARTAMENTO IN ('FILMES','ROUPAS');


/* #2 O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND */
SELECT * FROM FUNCIONARIOS 
WHERE SEXO = 'FEMININO' AND (DEPARTAMENTO = 'FILMES' OR DEPARTAMENTO = 'LAR');


/* #3 Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim */
SELECT* FROM FUNCIONARIOS
WHERE SEXO = 'MASCULINO' OR DEPARTAMENTO = 'JARDIM';



