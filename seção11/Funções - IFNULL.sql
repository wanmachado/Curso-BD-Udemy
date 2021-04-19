

/* nome, email, numero, estado */

SELECT A.NOME, A.EMAIL, B.ESTADO, C.NUMERO
FROM CLIENTE A
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C
ON A.IDCLIENTE = C.ID_CLIENTE;

+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JOAO    | JOAO@IG.COM       | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| JOAO    | JOAO@IG.COM       | RJ     | 99667587 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| JOAO    | JOAO@IG.COM       | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 99656675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88687979 |
| LORENA  | NULL              | ES     | 88965676 |
| ANTONIO | ANTONIO@IG.COM    | PR     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM  | PR     | 99655768 |
| CARMEM  | CARMEM@IG.COM     | SP     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+
25 rows in set (0.00 sec)



/* UTILIZANDO O IFNULL() */

SELECT  A.NOME, 
		IFNULL(A.EMAIL,'************') AS "E-MAIL", 
		B.ESTADO, 
		C.NUMERO
FROM CLIENTE A
INNER JOIN ENDERECO B
ON A.IDCLIENTE = B.ID_CLIENTE
INNER JOIN TELEFONE C
ON A.IDCLIENTE = C.ID_CLIENTE;

+---------+-------------------+--------+----------+
| NOME    | E-MAIL            | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JOAO    | JOAO@IG.COM       | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| JOAO    | JOAO@IG.COM       | RJ     | 99667587 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| JOAO    | JOAO@IG.COM       | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 99656675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88687979 |
| LORENA  | ************      | ES     | 88965676 |
| ANTONIO | ANTONIO@IG.COM    | PR     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM  | PR     | 99655768 |
| CARMEM  | CARMEM@IG.COM     | SP     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+
25 rows in set (0.00 sec)

