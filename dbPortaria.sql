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

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);



create table tbClientes(
codCli int not null auto_increment,
nome varchar (50),
email varchar(50),
telCel char (10),
primary key(codCli)
);


create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);


create table tbVendas(
codVend int not null auto_increment,
valor decimal (9,2),
quantidade int,
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli)
);



desc tbFuncionarios;
desc tbUsuarios;
desc tbClientes;
desc tbFornecedores;
desc tbProdutos;
desc tbVendas;

-- tabelas funcionarios
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('Matheus Melo', '52.741.528-7','425-785-985-77','M',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('nicolas marco', '45.765.848-2','454-785-925-77','M',3500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('jorge alba', '72.951.578-5','432-778-985-77','M',5000.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)values('Maria tadeu', '51.741.428-7','487-785-985-77','F',2400.45);

-- tabelas clientes
insert into tbClientes(nome,email,telCel)values('joana antunes','joana.antunes@gmail.com','95248-7859');
insert into tbClientes(nome,email,telCel)values('Matheus marques','Matheus.marques@gmail.com','92316-3249');
insert into tbClientes(nome,email,telCel)values('joao nunes','joao.nunes@gmail.com','96584-7821');

-- tabela fornecedores
insert into tbFornecedores(nome,email,telefone,cnpj) values('armarinho fernandes','armarinhofernandes@gmail.com','95467-2865','53.804.687/0001-84');
insert into tbFornecedores(nome,email,telefone,cnpj) values('marabras','marabras@gmail.com','93289-0365','67.588.878/0001-60');
insert into tbFornecedores(nome,email,telefone,cnpj) values('correderua','correderua@gmail.com','95668-0915','59.600.688/0001-93');

-- tabela funcionarios
insert into tbUsuarios(nome,senha,codFunc)values('joao.nunes','123456',3);
insert into tbUsuarios(nome,senha,codFunc)values('joana.antunes','654987',1);
insert into tbUsuarios(nome,senha,codFunc)values('Matheus.marques','147852',2);

-- tabela produtos

insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codForn)values('papel sulfite', '524515', '2030/11/19', '2024/11/21', '11:46:00', 10, 25.00, 1);
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codForn)values('guarda roupa', '654987', '2045/10/25', '2024/11/21', '07:46:00', 10, 250.00, 2);
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codForn)values('camisa', '777666', '2030/11/19', '2024/11/21', '01:46:00', 10, 35.00, 3);
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codForn)values('lapis', '78915', '2025/11/09', '2024/11/21', '12:46:00', 10, 2.50, 1);

-- tabela vendas
insert into tbVendas(valor, quantidade, dataVend, horaVend, codUsu, codProd, codCli)values (25.00, 10, '2024/11/30', '20:35:46', 1, 1, 1);
insert into tbVendas(valor, quantidade, dataVend, horaVend, codUsu, codProd, codCli)values (250.00, 5, '2024/11/30', '14:10:22', 2, 2, 2);
insert into tbVendas(valor, quantidade, dataVend, horaVend, codUsu, codProd, codCli)values (35.00, 20, '2024/11/30', '11:50:00', 3, 3, 3);
insert into tbVendas(valor, quantidade, dataVend, horaVend, codUsu, codProd, codCli)values (25.00, 8, '2024/11/30', '09:25:30', 1, 1, 3);
insert into tbVendas(valor, quantidade, dataVend, horaVend, codUsu, codProd, codCli)values (250.00, 12, '2024/11/30','16:40:15', 2, 3, 2);


select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;

-- inner join

select func.nome as 'nome do Funcionario', usu.nome as 'nome do Usuario' from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc = func.codFunc
where func.codFunc = 2;

select func.nome as 'nome do Funcionario', usu.nome as 'nome do Usuario' from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc = func.codFunc
where func.nome like '%m%';

select func.nome as 'nome do Funcionario', usu.nome as 'nome do Usuario' from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc = func.codFunc
where func.codFunc = 3;

select func.nome as 'nome do Funcionario',cli.nome as 'nome do cliente',prod.descricao,
vend.quantidade,vend.valor
from tbVendas as vend
inner join
tbFuncionarios as func on vend.codUsu = func.codfunc
inner join
tbClientes as cli on vend.codCli = cli.codCli
inner join
tbProdutos as prod on vend.codProd = prod.codProd;

-- Nome do fornecedor, lote do produto , validade do produto, 
-- email do fornecedor, quantidade de produto, 
-- cnpj do fornecedor, preço do produto.
 
-- A pergunta é para a tabela produtos.

select forn.nome, prod.lote, prod.validade, forn.email, prod.quantidade, forn.cnpj, prod.preco
from tbProdutos as prod 
inner join
tbFornecedores as forn on prod.codForn = forn.codForn;

