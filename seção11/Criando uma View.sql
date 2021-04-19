
	/* VIEW */

SELECT  A.NOME, 
		A.SEXO, 
		A.EMAIL, 
		B.TIPO, 
		B.NUMERO, 
		C.BAIRRO, 
		C.CIDADE, 
		C.ESTADO
FROM CLIENTE A 
INNER JOIN TELEFONE B 
ON A.IDCLIENTE = B.ID_CLIENTE 
INNER JOIN ENDERECO C 
ON A.IDCLIENTE = C.ID_CLIENTE;


/* CRIANDO A VIEW*/

CREATE VIEW RELATORIO AS
SELECT  A.NOME, 
		A.SEXO, 
		A.EMAIL, 
		B.TIPO, 
		B.NUMERO, 
		C.BAIRRO, 
		C.CIDADE, 
		C.ESTADO
FROM CLIENTE A 
INNER JOIN TELEFONE B 
ON A.IDCLIENTE = B.ID_CLIENTE 
INNER JOIN ENDERECO C 
ON A.IDCLIENTE = C.ID_CLIENTE;

SELECT * FROM RELATORIO;

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+
25 rows in set (0.00 sec)


 -- AS VIEWS SÃO LISTADAS NOS SHOW TABLES;



/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;



/* INSERINDO UM PREFIXO */

CREATE VIEW V_RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;


/* FAZENDO CONSULTA COM A VIEW */

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;

+---------+----------+--------+
| NOME    | NUMERO   | ESTADO |
+---------+----------+--------+
| JORGE   | 78458743 | ES     |
| JORGE   | 56576876 | ES     |
| JOAO    | 87866896 | RJ     |
| CARLOS  | 54768899 | RJ     |
| JOAO    | 99667587 | RJ     |
| ANA     | 78989765 | SP     |
| ANA     | 99766676 | SP     |
| JOAO    | 66687899 | RJ     |
| JORGE   | 89986668 | ES     |
| CARLOS  | 88687909 | RJ     |
| ANDRE   | 68976565 | MG     |
| ANDRE   | 99656675 | MG     |
| KARLA   | 33567765 | RJ     |
| KARLA   | 88668786 | RJ     |
| KARLA   | 55689654 | RJ     |
| DANIELE | 88687979 | RJ     |
| LORENA  | 88965676 | ES     |
| ANTONIO | 89966809 | PR     |
| ANTONIO | 88679978 | SP     |
| ELAINE  | 99655768 | PR     |
| CARMEM  | 89955665 | SP     |
| ADRIANA | 77455786 | RJ     |
| ADRIANA | 89766554 | RJ     |
| JOICE   | 77755785 | RJ     |
| JOICE   | 44522578 | RJ     |
+---------+----------+--------+
25 rows in set (0.00 sec)

