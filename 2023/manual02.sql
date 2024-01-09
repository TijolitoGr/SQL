------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1 - Gestão de utilizadores e permissões
-- Após a instalação, o MySQL cria uma conta de utilizador root que pode ser utilizada para gerir o SGBD. Este utilizador tem privilégios totais sobre o servidor 
-- MySQL, o que significa que tem controle total sobre todas as bases de dados, tabelas, utilizadores, etc. Assim, a utilização desta conta fora das funções 
-- administrativas deve ser evitada. Esta etapa descreve como criar uma nova conta de utilizador e conceder-lhe privilégios.

-- Em sistemas Ubuntu a executar MySQL 5.7 (e versões posteriores), o utilizador root do MySQL é configurado para ser autenticado através do plugin auth_socket 
-- por defeito, em vez de usar uma password. Este plugin requer que o nome do utilizador do sistema operativo que invoca o cliente MySQL corresponda ao nome do 
-- utilizador MySQL especificadono comando. Assim é necessário preceder o comando mysql com sudo para invocá-lo com os privilégios do utilizador root do Ubuntu
-- para obter acesso como o utilizador root do MySQL:

$ sudo mysql
-- Nota: Se o utilizador root do MySQL estiver configurado para se autenticar com password, o comando para aceder ao sheel mysql é:
$ mysql -u root -p
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.1 - Criação de um utilizador MySQL (na prompt mysql):

mysql> CREATE USER 'utilizador'@'localhost' IDENTIFIED BY 'password';
-- Nota: Criação de um utilizador MySQL (na prompt mysql) para utilização com aplicações compativeis com o novo sistema de plugin de autenticação:

mysql> CREATE USER 'utilizador'@'localhost' IDENTIFIED WITH authentication_plugin BY 'password';
-- Nota: Alterar o plugin de autenticação após criação do utilizador:

ALTER USER 'utilizador'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.2 - Conceder privilégios aos utilizadores
-- O comando seguinte irá conceder a um determinado utilizador privilégios globais para realizar os comandos CREATE, ALTER e DROP, sobre bases de dados, tabelas e
-- utilizadores, bem como o poder de realizar INSERT, UPDATE e DELETE a dados de qualquer tabela no servidor. Também irá conceder ao utilizador a capacidade de 
-- consultar dados com SELECT, criar chaves estrangeiras com REFERENCES e executar operações FLUSH com o privilégio RELOAD.
-- Nota bem: Só devem ser concedidas as permissões absolutamente necessárias aos utilizadores.

mysql> GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'utilizador'@'localhost' WITH GRANT OPTION;
-- Nota: Forma insegura do comando anterior: GRANT ALL PRIVILEGES ON *.* TO 'utilizador'@'localhost' WITH GRANT OPTION;
Após o comando CREATE USER ou GRANT muitos autores sugerem a utilização do comando seguinte de forma a recarregar as tabelas de privilégios na memória:
mysql> FLUSH PRIVILEGES;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.3 - Visualizar privilégios
mysql> SHOW GRANTS FOR 'utilizador'@'localhost';
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.4 - Revogar privilégios
mysql> REVOKE tipo_de_permissão ON basedados_nome.tabela_nome FROM 'utilizador'@'localhost';
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.5 - Apagar utilizador
mysql> DROP USER 'utilizador'@'localhost';
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.6 - Login com o novo utilizador
$ mysql -u utilizador -p
A opção -p fará com que o cliente MySQL solicite a password do utilizador MySQL para o autenticar.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
