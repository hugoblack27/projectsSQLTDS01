-- apagar db
drop database dbEscola;
-- criar o db
create database dbEscola;
-- acessar o db
use dbEscola;
-- criar tabelas 
create table tbAlunos(
codAlun int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
create table tbCursoAlunos(
Curso_codCurso int,
Aluno_codAlun int
);
create table tbCursos(
codCurso int,
nome varchar(45),
Professor_codProf int
); 
create table tbProfessores(
nome varchar (45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

-- visualizar tabelas
desc tbAlunos;
desc tbCursoAlunos;
desc tbCursos;
desc tbProfessores;