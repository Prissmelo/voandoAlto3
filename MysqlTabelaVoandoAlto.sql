use voando;

show columns from clientes;




create table clientes (
 id INT primary KEY auto_increment,
 nome varchar(40),
 cpf char(11),
 endereco varchar(40), 
 email varchar(20),
 data date,
 situacao varchar(11)




);