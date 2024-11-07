-- apagar banco de dados
drop database dbLojaABC;
-- criar banco de dados
create database dbLojaABC;
-- acessar banco de dados
use dbLojaABC;
 
-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
cpf char(14),
endereco varchar(100),
cep char(9),
numero char(10),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
dataNasci date,
salario decimal(9,2)
);
insert into tbFuncionarios(codFunc,nome,email,cpf,
endereco,cep,numero,bairro,cidade,estado,telefone,
dataNasci,salario)values(1,'Francisca da Silva',
'francisca.silva@hotmail.com','458.586.987-88',
'Rua Dr.Antonio Bento','04750-000','355',
'Santo Amaro','São Paulo','SP','93737-3737',
'200/10/31',1500.00);
 
-- visualizando as tabelas
show tables;
-- visualizando a estrutura das tabelas
desc tbFuncionarios;
-- inserir registros no banco de dados
-- visualizar os registros das tabelas
select * from tbFuncionarios;