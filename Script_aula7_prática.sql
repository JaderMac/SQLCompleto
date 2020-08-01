#acessa de um IP especifico
#CREATE USER 'Andre' @ '200.200.190.190' IDENTIFIED BY 'meupaudeoculos123';
#acessa de qualquer IP
#CREATE USER 'Andre' @ '%' IDENTIFIED BY 'meupaudeoculos123';

CREATE USER 'Andre'@'localhost' IDENTIFIED BY '12345678';
GRANT ALL ON curso_sql.* TO 'Andre'@'localhost';
CREATE USER 'Andre'@'%' IDENTIFIED BY 'VIAGEM';
GRANT INSERT ON curso_sql.funcionarios TO 'Andre'@'%';


REVOKE INSERT ON curso_sql.funcionarios FROM 'Andre'@'%';
REVOKE SELECT ON curso_sql.* FROM 'Andre'@'%';

GRANT INSERT ON curso_sql.funcionarios TO 'Andre'@'%';
GRANT INSERT ON curso_sql.veiculos TO 'Andre'@'%';

REVOKE INSERT ON curso_sql.funcionarios FROM 'Andre'@'%';
REVOKE INSERT ON curso_sql.veiculos FROM 'Andre'@'%';

DROP USER 'Andre'@'localhost';
DROP USER 'Andre'@'%';

#LISTAR USUARIOS
SELECT USER  FROM mysql.user;
#mostrar PRIVILÉGIOS
SHOW GRANTS FOR 'Andre'@'localhost';












