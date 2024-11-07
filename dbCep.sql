-- apagar o db
drop database dbCep;
-- criar o db
create database dbCep;
-- acessaer o db
use dbCep;
-- criar tabelas
create table tbBairros(
codBair int,
nome varchar (100),
cidade int
);
create table tbCidades(
codCidad int,
nome varchar (100),
estado int
);
create table tbEstados(
codEstad int,
sigla char (2)
);
create table tbEndercos(
codEnde bigint,
bairro int(11),
tipo_local varchar(15),
logradouro varchar(128),
numero int(11),
complemento varchar(255)
);
create table tbServicos(
codServ bigint,
endereco bigint(20),
solicitante bigint(20)
);
create table tbPontos(
codPont bigint,
endereco bigint(20)
);
create table tbSolicitantes(
codSolic bigint,
endereco bigint
);
-- visualizar tabela 
desc tbBairros;
desc tbCidades;
desc tbEstados;
desc tbEndercos;
desc tbServicos;
desc tbPontos;
desc tbSolicitantes;