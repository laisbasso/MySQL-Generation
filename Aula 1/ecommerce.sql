create database ecommerce;
use ecommerce;

create table produtos(
id_prod bigint(6) not null auto_increment,
nome varchar(30) not null,
descricao text,
preco decimal (7,2) not null,
disp_estoque bigint(6) not null,
primary key (id_prod)
);

insert into produtos values
(default, 'Contrabaixo Black', 'Cor: Preta', '8900', '150'),
(default, 'Contrabaixo Jazz', 'Cor: Bordô', '8900', '40'),
(default, 'Mini Amplificador', 'Condição: Seminovo', '400', '1'),
(default, 'Pedal Simples', 'Condição: Novo', '790', '5'),
(default, 'In-Ear Blue', 'Série: Earphones', '4600', '80');

select nome, preco from produtos where preco > 500;
select nome, preco from produtos where preco < 500;
update produtos set disp_estoque = '38' where id_prod = 2;
select * from produtos;