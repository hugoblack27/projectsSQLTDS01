-- apagar banco de dados
drop database dbloterica;
-- Criar banco de dados
create database dbLoterica;
-- acessar o banco de dados
use dbLoterica;
-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar (100),
telefone char (9),
cpf char(14),
idade int,
salario decimal(9,2) 
);

-- inserindo registros nas tabelas
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(1,'Ronivaldo Batista Santos','roni.Batista@gmail.com','987120567','174.255.958-64',32,54000);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(2,'Rosangela Batista Santos','rosangelabatistasantos@gmail.com','965874234','335.547.568-25',28,7475);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(3,'Rosimeire Souza Costa','rosimeiresouza@gmail.com','965429854','157.137.514-65',54,500);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(4,'Rosana Batista','roBatista@gmail.com','965456464','125.187.714-25',45,1300);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(5,'Reinaldo Batista','reinaldoBa@gmail.com','963643154','747.637.544-35',51,3216);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(5,'Reinaldo Batista','reinaldoBa@gmail.com','963643154','747.637.544-35',51,3216);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(5,'Reinaldo Batista','reinaldoBa@gmail.com','963643154','747.637.544-35',51,3216);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(5,'Reinaldo Batista','reinaldoBa@gmail.com','963643154','747.637.544-35',51,3216);

-- visualizando as estruturas das tabelas
desc tbFuncionarios;

-- visualizando os registros da tabelas
select * from tbFuncionarios;

-- alterando registros das tabelas

-- update


-- excluindo registros das tabelas
-- delete from tbFuncionarios where codFunc = 3;