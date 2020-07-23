create database db_farmaciaDoBem;
use db_farmaciaDoBem;

create table tb_categoria(
id bigint not null auto_increment,
categoria varchar(20) not null,
promocao boolean not null,
primary key(id)
);

create table tb_produto(
id bigint not null auto_increment,
produto varchar(30) not null,
valor decimal (5,2) not null, 
disp_estoque bigint not null,
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'Suplementos', true),
(default, 'Analgésicos', false),
(default, 'Infantil', false),
(default, 'Doces', false),
(default, 'Coletores menstruais', false);

insert into tb_produto values
(default, 'Vitamina B12', 52, 65, 1),
(default, 'ChocoSoy', 7, 20, 4),
(default, 'Shampoo Infantil', 15, 35, 3),
(default, 'Bananinha', 2, 25, 4),
(default, 'Vitamina D', 40, 90, 1);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60 order by valor desc;
select * from tb_produto where produto like '%B%' order by produto;
select * from tb_produto p join tb_categoria c on p.id_categoria = c.id order by produto;
select * from tb_produto p join tb_categoria c on p.id_categoria = c.id where c.categoria = 'Suplementos' order by produto;