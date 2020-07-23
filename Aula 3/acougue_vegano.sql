create database db_cidadeDasCarnes;
use db_cidadeDasCarnes;

create table tb_categoria(
id smallint not null auto_increment,
categoria varchar(25) not null,
promocao boolean not null,
primary key(id)
);

create table tb_produto(
id smallint not null auto_increment,
produto varchar(30) not null,
valor decimal(5,2) not null,
contem_soja boolean not null,
id_categoria smallint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'Queijos veganos', true),
(default, 'Tofu', true),
(default, 'Salsichas veganas', false),
(default, 'Iogurtes veganos', false),
(default, 'Leites veganos', false);

insert into tb_produto values
(default, 'Catupiry', 10.5, true, 1),
(default, 'Leite de Amêndoas', 15.5, true, 5),
(default, 'Salsicha Goshen', 7.5, true, 3),
(default, 'Iogurte de Morango', 3.5, true, 4),
(default, 'Tofu macio', 8.5, true, 2);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60 order by produto;
select * from tb_produto where produto like'%C%';
select * from tb_produto p join tb_categoria c on p.id_categoria = c.id;
select * from tb_produto p join tb_categoria c on p.id_categoria = c.id where c.categoria = 'Iogurtes veganos';