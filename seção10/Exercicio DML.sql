
/* 1 - RELATORIO GERAL DE TODOS OS CLIENTES */

SELECT A.IDCLIENTE, A.NOME, A.SEXO, A.EMAIL, A.CPF, B.RUA, B.BAIRRO, B.CIDADE, B.ESTADO, C.TIPO, C.NUMERO
FROM CLIENTE A
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C
ON A.IDCLIENTE = C.ID_CLIENTE;

+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | LORENA  | M    | NULL              | 774557887   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
25 rows in set (0.00 sec)


/* 2 - RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

SELECT A.NOME, A.CPF, C.NUMERO, C.TIPO, B.RUA, B.BAIRRO, B.CIDADE, B.ESTADO
FROM CLIENTE A 
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C 
ON A.IDCLIENTE = C.ID_CLIENTE;

+---------+-------------+----------+------+--------------------+------------+----------------+--------+
| NOME    | CPF         | NUMERO   | TIPO | RUA                | BAIRRO     | CIDADE         | ESTADO |
+---------+-------------+----------+------+--------------------+------------+----------------+--------+
| JORGE   | 8756547688  | 78458743 | CEL  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |
| JORGE   | 8756547688  | 56576876 | RES  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |
| JOAO    | 76567587887 | 87866896 | CEL  | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | 5464553466  | 54768899 | COM  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | 76567587887 | 99667587 | RES  | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | 456545678   | 78989765 | CEL  | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |
| ANA     | 456545678   | 99766676 | CEL  | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |
| JOAO    | 76567587887 | 66687899 | COM  | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | 8756547688  | 89986668 | RES  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |
| CARLOS  | 5464553466  | 88687909 | CEL  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANDRE   | 7687567     | 68976565 | RES  | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | 7687567     | 99656675 | CEL  | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | 545676778   | 33567765 | CEL  | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | 545676778   | 88668786 | CEL  | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | 545676778   | 55689654 | COM  | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | 43536789    | 88687979 | COM  | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | 774557887   | 88965676 | COM  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |
| ANTONIO | 12436767    | 89966809 | CEL  | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |
| ANTONIO | 3423565     | 88679978 | COM  | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | 32567763    | 99655768 | CEL  | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | 787832213   | 89955665 | RES  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |
| ADRIANA | 88556942    | 77455786 | RES  | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | 88556942    | 89766554 | RES  | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | 55412256    | 77755785 | RES  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | 55412256    | 44522578 | COM  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+-------------+----------+------+--------------------+------------+----------------+--------+
25 rows in set (0.00 sec)


/* 3 - RELATORIO DE HOMENS */

SELECT A.IDCLIENTE, A.NOME, A.SEXO, A.EMAIL, A.CPF, B.RUA, B.BAIRRO, B.CIDADE, B.ESTADO, C.TIPO, C.NUMERO
FROM CLIENTE A
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C
ON A.IDCLIENTE = C.ID_CLIENTE
WHERE SEXO = 'M';

+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | LORENA  | M    | NULL              | 774557887   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
18 rows in set (0.00 sec)


-- DANDO UPDATE NOS CLIENTES COM SEXO ALTERADO --

SELECT * FROM CLIENTE WHERE IDCLIENTE IN ('11', '12' ,'13', '17', '18');

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE IN ('11', '12' ,'13', '17', '18');



/* 4 - RELATORIO DE MULHERES */

SELECT A.IDCLIENTE, A.NOME, A.SEXO, A.EMAIL, A.CPF, B.RUA, B.BAIRRO, B.CIDADE, B.ESTADO, C.TIPO, C.NUMERO
FROM CLIENTE A 
INNER JOIN ENDERECO B 
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C 
ON A.IDCLIENTE = C.ID_CLIENTE
WHERE SEXO = 'F';

+-----------+---------+------+-------------------+-----------+--------------------+---------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       | RUA                | BAIRRO  | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-----------+--------------------+---------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS | SAO PAULO      | SP     | CEL  | 99766676 |
|        15 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767  | AV CAPITAO ANTUNES | CENTRO  | CURITIBA       | PR     | CEL  | 89966809 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GERONIMO       | CENTRO  | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GERONIMO       | CENTRO  | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE   | CENTRO  | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE   | CENTRO  | RIO DE JANEIRO | RJ     | COM  | 44522578 |
+-----------+---------+------+-------------------+-----------+--------------------+---------+----------------+--------+------+----------+
7 rows in set (0.00 sec)

-- DANDO UPDATE NOS CLIENTES COM SEXO ALTERADO --

SELECT* FROM CLIENTE WHERE IDCLIENTE = '15';

UPDATE CLIENTE 
SET SEXO = 'M'
WHERE IDCLIENTE = '15';



/* 5 - QUANTIDADE DE HOMENS E MULHERES */

SELECT SEXO, COUNT(*) AS QUANTIDADE
FROM CLIENTE 
GROUP BY SEXO;

+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| M    |          8 |
| F    |         11 |
+------+------------+
2 rows in set (0.09 sec)



/* 6 - IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */


SELECT A.IDCLIENTE, A.EMAIL, A.NOME, A.SEXO, C.TIPO, B.BAIRRO, B.CIDADE
FROM CLIENTE A
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C
ON A.IDCLIENTE = C.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND TIPO NOT IN ('CEL');

+-----------+-------------------+---------+------+------+--------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO | CIDADE         |
+-----------+-------------------+---------+------+------+--------+----------------+
|        11 | KARLA@GMAIL.COM   | KARLA   | F    | COM  | CENTRO | RIO DE JANEIRO |
|        19 | ADRIANA@GMAIL.COM | ADRIANA | F    | RES  | CENTRO | RIO DE JANEIRO |
|        19 | ADRIANA@GMAIL.COM | ADRIANA | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | JOICE@GMAIL.COM   | JOICE   | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | JOICE@GMAIL.COM   | JOICE   | F    | COM  | CENTRO | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+--------+----------------+
5 rows in set (0.00 sec)



/* 7 - PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT   A.NOME, A.EMAIL, C.NUMERO AS CELULAR
FROM CLIENTE A 
INNER JOIN ENDERECO B 
ON A.IDCLIENTE = B.ID_CLIENTE 
INNER JOIN TELEFONE C 
ON A.IDCLIENTE = C.ID_CLIENTE 
WHERE TIPO = 'CEL' AND ESTADO = 'RJ'; 

+--------+-----------------+----------+
| NOME   | EMAIL           | CELULAR  |
+--------+-----------------+----------+
| JOAO   | JOAO@IG.COM     | 87866896 |
| CARLOS | CARLOSA@IG.COM  | 88687909 |
| KARLA  | KARLA@GMAIL.COM | 33567765 |
| KARLA  | KARLA@GMAIL.COM | 88668786 |
+--------+-----------------+----------+
4 rows in set (0.00 sec)


/* 8 PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT A.NOME, A.EMAIL, C.NUMERO AS CELULAR
FROM CLIENTE A
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C
ON A.IDCLIENTE = C.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';

+--------+---------------+----------+
| NOME   | EMAIL         | CELULAR  |
+--------+---------------+----------+
| ANA    | ANA@IG.COM    | 78989765 |
| ANA    | ANA@IG.COM    | 99766676 |
| CARMEM | CARMEM@IG.COM | 89955665 |
+--------+---------------+----------+
3 rows in set (0.00 sec)

