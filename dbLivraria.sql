-- apagar db
drop database dbLivraria;
-- criar o db
create database dbLivraria;
-- acessar o db
use dbLivraria;
-- criar tabelas
create table tbAlunos(
codAlun int,
nome varchar(45),
email varchar(45),
telefone varchar(45)
);
create table tbLivros(
codLivr int,
nome varchar(45),
autor varchar(45),
paginas varchar(45),
Aluno_codAlun int,
Colaborador_codColab int
);
create table tbColaboradores(
codColab int,
cpf varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);
create table tbEmprestimos(
codEmprest int,
data_emprestimo date,
data_devolucao date, 
livro varchar(45),
Colaborador_cpf varchar(45),
Colaborador_codColab int 
);
-- visualizar
desc tbAlunos;
desc tbLivros;
desc tbColaboradores;
desc tbEmprestimos;