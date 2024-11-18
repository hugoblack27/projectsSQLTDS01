drop database dbprodutos;
 
create database dbprodutos;
 
use dbprodutos;
 
CREATE TABLE PRODUTOS(
CODIGO INT,
NOME VARCHAR(50),
TIPO VARCHAR(25),
QUANTIDADE INT,
VALOR DECIMAL(10,2));
 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVDPLAYER', 'ELETRONICOS', 250, 500.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

desc PRODUTOS;

select * from PRODUTOS;

select * from PRODUTOS where TIPO = 'INFORMATICA';

select NOME from PRODUTOS where TIPO = 'INFORMATICA';

-- aumente em 12% os produtos que começam com F:
update produtos set valor = valor * 1.12 where nome like 'f%';

select * from PRODUTOS where nome like 'f%';

-- aumentar em 50 unidades os produtos que seja maior que 400 e inferior a 600:
update produtos set QUANTIDADE = QUANTIDADE + 50 where valor > 400 and valor < 600;

select * from PRODUTOS where valor > 400 and valor < 600;;

-- aplicar desconto de 50% em todos os produtos que esteja com a quantidade maior que 300
update produtos set valor = valor * 0.50 where QUANTIDADE > 300;

select * from PRODUTOS where QUANTIDADE > 300;

-- exiba o produto do codigo 4
select * from PRODUTOS where CODIGO = 4;

-- exiba todos os produtos que não tenha Y
select * from PRODUTOS where nome not like '%y%';

-- exibir todos os produtos que iniciem com o nome MO e tenham letras MA
select * from PRODUTOS where nome like 'MO%' and tipo like '%MA%';

