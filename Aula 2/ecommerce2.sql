create database db_ecommerce2;
use db_ecommerce2;

create table tb_categoria(
id smallint not null auto_increment,
categoria varchar(30) not null,
promocao boolean,
primary key (id)
);

create table tb_produto(
id smallint not null auto_increment,
nome varchar(30) not null,
preco decimal(7,2) not null,
disp_estoque bigint(6) not null,
id_categoria smallint not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'Instrumentos de Corda', false),
(default, 'Microfones', false),
(default, 'Instrumentos de Teclas', false),
(default, 'Bateria e Percussão', false),
(default, 'Instrumentos de Sopro', false);

insert into tb_produto values
(default, "Bateria Eletrônica", 2599, 15, 4),
(default, "Violão Folk", 629.90, 5, 1),
(default, "Saxofone", 2052, 1, 5),
(default, "Teclado", 359.90, 25, 3),
(default, "Microfone Profissional", 59.90, 90, 2);

select * from tb_produto where preco > 2000 order by nome;

select * from tb_produto where preco between 1000 and 2000 order by nome;

select * from tb_produto where nome like '%C%' order by nome;

select * from tb_produto p
join tb_categoria c
on p.id_categoria = c.id
order by p.nome;

select * from tb_produto p
join tb_categoria c
on p.id_categoria = c.id
where c.categoria = 'Microfones';