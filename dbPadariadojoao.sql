drop database dbPadariadojoao;

create database dbPadariadojoao;

use dbPadariadojoao;

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar (100),
email varchar (100),
endereco varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn)
);


create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar (100) not null,
rg char (13) not null unique,
cpf char(14) not null unique,
cargo varchar (100) not null,
sexo char(1) default 'F' check(sexo in('F','M')),
primary key (codFunc)
);


create table tbClientes(
codCli int not null auto_increment,
nome varchar(100),
telCel char(10),
pagamento varchar (10) default 'pix' check(pagamento in('cartao' or 'pix' or 'dinheiro')),
primary key (codCli)
);

create table tbEstoques(
codEstoq int not null auto_increment,
descricao varchar (100) not null,
preco decimal (9,2) not null,
quantidade int,
produto varchar (100),
validade date,
dataEntr date,
horaEntr time,
codForn int not null,
primary key(codEstoq),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar (100) not null,
lote char (12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbEstoqProd(
quantidadeEstoque int,
codEstoq int,
codProd int,
primary key(codEstoq, codProd),
foreign key(codEstoq) references tbEstoques(codEstoq),
foreign key(codProd) references tbProdutos(codProd)
);


create table tbCartoes(
codNum int not null auto_increment,
valTotal decimal (9,2),
primary key (codNum)
);

create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaVend time,
codProd int not null,
codCli int not null,
codFunc int not null,
codNum int not null,
primary key(codVend),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli),
foreign key(codFunc)references tbFuncionarios(codFunc),
foreign key(codNum)references tbCartoes(codNum)
);

desc tbFornecedores;
desc tbProdutos;
desc tbFuncionarios;
desc tbClientes; 
desc tbEstoques;
desc tbCartoes;
desc tbVendas;
desc tbEstoqProd;

--#################################################################################################################################################################################################################################################
-- tabela de fornecedores
insert into tbFornecedores(nome,email,endereco,telefone,cnpj)values('paes e trigos do seu zete','seuzetetrigos@gmail.com','Rua tamarindo alameda','965432154','20.829.847/0001-90');
insert into tbFornecedores(nome,email,endereco,telefone,cnpj)values('frios do doug','dougfrios@hotmail.com','Rua damasceno davila','9745124578','29.337.694/0001-39');
insert into tbFornecedores(nome,email,endereco,telefone,cnpj)values('fazenda do miguel','fazendamiguel@gmail.com','Rua disulmiudo do santos','9235489823','67.254.288/0001-00');
insert into tbFornecedores(nome,email,endereco,telefone,cnpj)values('acougue da marcia','acouguedamarcia775@gmail.com','Rua damasceno davila','9745124578','64.843.577/0001-48');
insert into tbFornecedores(nome,email,endereco,telefone,cnpj)values('loja doce do mel','docemel5577@gmail.com','Rua disulmiudo do santos','9235489823','04.211.484/0001-79');

select * from tbFornecedores;

update tbFornecedores set email  = 'zetetrigos965@hotmail.com' where codForn = 1;
select * from tbFornecedores 
where email = 'zetetrigos965@hotmail.com';

update tbFornecedores set endereco = 'rua disumiudao dos santos' where codForn = 3;
select * from tbFornecedores
where endereco = 'rua disumiudao dos santos';

update tbFornecedores set nome = 'loja doce mel' where codForn = 5;
select * from tbFornecedores
where nome = 'loja doce mel';

update tbFornecedores set telefone = '96542319874' where codForn = 3;
select * from tbFornecedores
where telefone = '96542319874';

update tbFornecedores set nome = 'frios do douglas' where codForn = 2;
select * from tbFornecedores
where nome = 'frios do douglas';

select * from tbFornecedores;

--#################################################################################################################################################################################################################################################
-- tabelas de produtos 
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values('leite','354698542','2025-05-27','2024-12-17','07:45:00',9,130.00,5);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values('lanche','354698542','2025-05-27','2024-12-17','07:45:00',9,650.00,3);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values('mussarela','354698542','2025-05-27','2024-12-17','07:45:00',9,120.00,2);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values('pao','354698542','2025-05-27','2024-12-17','07:45:00',150,120.00,1);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values('frango assado','354698542','2025-05-27','2024-12-17','07:45:00',9,120.00,4);


select * from tbProdutos;

update tbProdutos set validade = '2025-04-25' where codProd = 3;
select * from tbProdutos
where validade = '2025-04-25';

update tbProdutos set descricao = 'mussarela de 10KG' where codProd = 3;
select * from tbProdutos
where descricao = 'mussarela de 10KG';

update tbProdutos set horaEntr = '07:59:45' where codProd = 3;
select * from tbProdutos
where horaEntr = '07:59:45';

update tbProdutos set quantidade = 50 where codProd = 3;
select * from tbProdutos
where quantidade = 50;

update tbProdutos set preco = 1750.99 where codProd = 3;
select * from tbProdutos
where preco = 1750.99;

select * from tbProdutos;

--#################################################################################################################################################################################################################################################
-- tabela de funcionarios
insert into tbFuncionarios(nome,rg,cpf,cargo,sexo)values('Luiza Fernandes','43.329.793-1','878.047.923-52','auxiliar de limpeza','F');
insert into tbFuncionarios(nome,rg,cpf,cargo,sexo)values('Camila Ferreira','34.232.560-7','512.773.404-47','caixa','F');
insert into tbFuncionarios(nome,rg,cpf,cargo,sexo)values('Clara Dias','21.256.798-6','799.356.766-17','atendente','F');
insert into tbFuncionarios(nome,rg,cpf,cargo,sexo)values('Vinicius Ribeiro','34.306.753-5','766.554.963-22','padeiro','M');
insert into tbFuncionarios(nome,rg,cpf,cargo,sexo)values('Miguel Lima','25.137.713-1','411.976.363-31','padeiro','M');

select * from tbFuncionarios;

update tbFuncionarios set nome = 'luiza Fernandes da Silva' where codFunc = 1;
select * from tbFuncionarios
where nome = 'luiza Fernandes da Silva';

update tbFuncionarios set nome = 'Clara Dias de Souza' where codFunc = 3;
select * from tbFuncionarios
where nome = 'Clara Dias de Souza';

update tbFuncionarios set cpf = '696.034.800-53' where codFunc = 1;
select * from tbFuncionarios
where cpf = '696.034.800-53';

update tbFuncionarios set cpf = '542.233.550-31' where codFunc = 3;
select * from tbFuncionarios
where cpf = '542.233.550-31';

update tbFuncionarios set cpf = '976.779.638-03' where codFunc = 5;
select * from tbFuncionarios
where cpf = '976.779.638-03';

select * from tbFuncionarios;

--#################################################################################################################################################################################################################################################
-- tabela de clientes
insert into tbClientes(nome,telCel)values('jaciara',6543296);
insert into tbClientes(nome,telCel)values('luciano',6354987);
insert into tbClientes(nome,telCel,pagamento)values('paulo',1235,'dinheiro');
insert into tbClientes(nome,telCel,pagamento)values('fernando',546387,'cartao');
insert into tbClientes(nome,telCel,pagamento)values('jucilene',3246879,'cartao');

select * from tbClientes;


update tbClientes set nome = 'juciara souza' where codCli = 1;
select * from tbClientes
where nome = 'juciara souza';


update tbClientes set nome = 'luciano augusto' where codCli = 2;
select * from tbClientes
where nome = 'luciano augusto';


update tbClientes set nome = 'paulo ferreira' where codCli = 3;
select * from tbClientes
where nome = 'paulo ferreira';

update tbClientes set nome = 'fernando augusto' where codCli = 4;
select * from tbClientes
where nome = 'fernando augusto';


update tbClientes set nome = 'jucielene silva' where codCli = 5;
select * from tbClientes
where nome = 'jucielene silva';

select nome from tbClientes;


--#################################################################################################################################################################################################################################################
--tabela de cartao
insert into tbCartoes(valTotal)values(120.00);
insert into tbCartoes(valTotal)values(150.00);
insert into tbCartoes(valTotal)values(175.00);
insert into tbCartoes(valTotal)values(175.00);
insert into tbCartoes(valTotal)values(125.00);

select * from tbCartoes;

update tbCartoes set valTotal = 12.00  where codNum = 4;
select * from tbCartoes
where valTotal = 12.00;

update tbCartoes set valTotal = 15.00  where codNum = 2;
select * from tbCartoes
where valTotal = 15.00;

update tbCartoes set valTotal = 125.50  where codNum = 1;
select * from tbCartoes
where valTotal = 125.50;

update tbCartoes set valTotal = 85.99  where codNum = 3;
select * from tbCartoes
where valTotal = 85.99 ;

update tbCartoes set valTotal = 56.00 where codNum = 5;
select * from tbCartoes
where valTotal = 56.00;

select valTotal from tbCartoes;


--#################################################################################################################################################################################################################################################
-- tabela de vendas 
insert into tbVendas(valor,quantidade,dataVend,horavend,codProd,codCli,codFunc,codNum)values(15.00, 1,'2024-11-27','09:05:00',1,3,2,1);
insert into tbVendas(valor,quantidade,dataVend,horavend,codProd,codCli,codFunc,codNum)values(10.00, 1,'2024-11-17','14:05:00',4,5,2,2);
insert into tbVendas(valor,quantidade,dataVend,horavend,codProd,codCli,codFunc,codNum)values(6.50, 1,'2024-11-17','08:05:00',3,2,2,3);
insert into tbVendas(valor,quantidade,dataVend,horavend,codProd,codCli,codFunc,codNum)values(25.00, 1,'2024-11-17','12:10:00',5,1,2,1);
insert into tbVendas(valor,quantidade,dataVend,horavend,codProd,codCli,codFunc,codNum)values(19.50, 1,'2024-11-17','21:05:00',2,4,2,2);

select * from tbVendas;











-- tabela de estoque
insert into tbEstoques(descricao,preco,quantidade,produto,validade,dataEntr,horaEntr,codForn)values('pacotes de farinha de trigos',1000.00,9,'farinha de trigo','2029-12-20','2024-05-26','07:21:11',1);
insert into tbEstoques(descricao,preco,quantidade,produto,validade,dataEntr,horaEntr,codForn)values('pecas de carne',2000.00,15,'frango,hamburguer,bacon','2026-02-13','2024-10-21','07:33:47',5);
insert into tbEstoques(descricao,preco,quantidade,produto,validade,dataEntr,horaEntr,codForn)values('frios em pacotes fechados',100.00,9,'mussarela, presunto, mortadela','2027-01-01','2025-05-16','14:15:30',3);
insert into tbEstoques(descricao,preco,quantidade,produto,validade,dataEntr,horaEntr,codForn)values('compras para estoque da loja',5750.90,40,'leite,cafe,bolacha,bala,papel higienico,oleo,farinha,mel,ovo','2029-05-10','2024-06-05','10:12:03',1);
insert into tbEstoques(descricao,preco,quantidade,produto,validade,dataEntr,horaEntr,codForn)values('',100.00,9,'','2027-09-15','2024-05-29','11:00:10',1);

select * from tbEstoques;

-- tabela de estoque e produto
insert into tbEstoqProd(quantidadeEstoque,codEstoq,codProd)values(10,2,1);
insert into tbEstoqProd(quantidadeEstoque,codEstoq,codProd)values(15,3,5);
insert into tbEstoqProd(quantidadeEstoque,codEstoq,codProd)values(75,4,3);
insert into tbEstoqProd(quantidadeEstoque,codEstoq,codProd)values(200,5,4);
insert into tbEstoqProd(quantidadeEstoque,codEstoq,codProd)values(100,1,2);

select * from tbEstoqProd;



