-- apagar bd
drop database dbzoologico;

-- criar uma database chamada zoologico
create database dbzoologico;

-- acessar banco de dados
use dbzoologico;

--criar tabelas
create table tbAnimais(
CodAni int,
tipo char(15),
nome varchar(30),
idade int,
valor decimal(10,2)
);

-- inserir informaçoes na tabela
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(1,'cachorro','Djudi',3,300.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(2,'cachorro','Sula',5,300.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(3,'cachorro','Sarina',7,300.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(4,'gato','Pipa',2,500.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(5,'gato','Sarangue',2,500.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(6,'gato','Clarences',1,500.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(7,'coruja','Agnes',0,700.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(8,'coruja','Arabela',1,700.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(9,'sapo','Quash',1,100.00);
insert into tbAnimais(CodAni,tipo,nome,idade,valor) values(10,'peixe','Fish',0,100.00);

-- visualizar tabelas
desc tbAnimais;

-- visualizando registros
select * from tbAnimais;

-- 4 - escrever um comando que apareça as colunas Tipos e Nomes da tabela mostrando todos os registros
select tipo, nome from tbAnimais; 

-- 5 - escrever um comando que apareça as colunas Tipos, Nomes e Idade da tabela mostrando todos os registros
select tipo, nome, idade from tbAnimais;

-- 6 - escreva um comando que apareça as colunas Tipo e Nome da tabela mostrando os registros mas mude o nome Tipo para tipo animal e Nome para nome do animal
select  tipo as 'Tipo de animal', nome as 'Nome do animal'from tbAnimais;

-- 7 - escreva um comando que apareça as colunas Tipo,Nome e Idade da tabela mostrando os registros mas mude o nome Tipo para tipo animal, Nome para nome do animal e idade para tempo de vida 
select  tipo as 'Tipo de animal', nome as 'Nome do animal', idade as 'Tempo de vida' from tbAnimais;

-- 8 - escreva um comando que apresente os dados da tabela Animais 
select 'Animal Domestico' as 'Procedencia', tipo, nome, idade as 'Tempo de vida' from tbAnimais;

-- 9 - escreva um comando que apresente a tabela da segunte forma
select tipo, nome, idade, valor as 'Valor Original', valor * 1.10 as 'Valor de Venda' from tbAnimais;

-- 10 - escreva um comando que apresente a tabela da segunte forma
select distinct tipo, valor as 'Valor Original', valor * 1.10 as 'Valor de Venda' from tbAnimais;