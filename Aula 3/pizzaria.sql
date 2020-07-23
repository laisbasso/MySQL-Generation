create database db_pizzariaLegal;
use db_pizzariaLegal;

create table tb_categoria(
id smallint not null auto_increment,
categoria varchar(30) not null,
organica boolean not null,
primary key(id)
);

create table tb_pizza(
id smallint not null auto_increment,
sabor varchar(30),
borda_recheada boolean not null,
valor decimal(4,2) not null,
id_categoria smallint,
primary key(id), 
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'Vegana', true),
(default, 'Doce', true),
(default, 'Vegana', false),
(default, 'Raw', true),
(default, 'Doce', false);

insert into tb_pizza values
(default, 'Marguerita', true, 30, 1),
(default, 'Portuguesa', true, 35, 1),
(default, 'Mix de Cogumelos', false, 47, 3),
(default, 'Prestígio', false, 25, 5),
(default, 'Pimentões', true, 20, 4);

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60 order by sabor;
select * from tb_pizza where sabor like '%C%' order by sabor;
select * from tb_categoria c join tb_pizza p on c.id = p.id_categoria;
select * from tb_categoria c join tb_pizza p on c.id = p.id_categoria where c.categoria = 'Vegana' order by p.sabor;