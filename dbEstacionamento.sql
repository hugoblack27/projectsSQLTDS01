-- apagar o db
drop database dbestacionamentos;
-- criar o db
create database dbestacionamentos;
-- acessaer o db
use dbestacionamentos;
-- criar tabelas
create table tbUsuarios(
CodUsu int,
nome varchar(50),
senha varchar(12),
);
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(10)
);
create table tbCarros(
codCar int,
mome varchar(100),
placa char(7),
cor varchar(20)
);
create table tbDiarias(
codDia int,
dataEntrada date,
horaEntrada time,
dataSaida date,
horasaida time 
);

--visualizando a tabela
desc tbUsuarios;
desc tbFuncionarios;
describe tbCarros;
describe tbDiarias;

-- alterando estrutura da tabela
alter table tbFuncionarios
add cpf char(14);

alter table tbFuncionarios
add salario decimal(9,2);

desc tbFuncionarios;