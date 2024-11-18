drop database dbPortaria;

create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key (codFunc)  
);

desc tbFuncionarios;

insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('Matheus Melo', '52.741.528-7','425-785-985-77','M',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('nicolas marco', '45.765.848-2','454-785-925-77','M',3500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('jorge alba', '72.951.578-5','432-778-985-77','M',5000.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('Maria tadeu', '51.741.428-7','487-785-985-77','F',2400.45);

select * from tbFuncionarios;