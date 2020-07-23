create database db_construindoANossaVida;
use db_construindoANossaVida;

create table tb_categoria(
id smallint not null auto_increment,
categoria varchar(20) not null,
promocao boolean not null,
primary key(id)
);

create table tb_produto(
id smallint not null auto_increment,
produto varchar(30) not null,
cor varchar(15) not null,
valor decimal(5,2) not null,
id_categoria smallint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'Tintas', false),
(default, 'Lâmpadas', false),
(default, 'Cimento', true),
(default, 'Verniz', false),
(default, 'Telhas', true);

insert into tb_produto values
(default, 'Lâmpada LED', 'RGB', 10, 2),
(default, 'Fita LED', 'RGB', 25, 2),
(default, 'Verniz escuro', 'Mogno', 45, 4),
(default, 'Tinta para piso', 'Verde musgo', 35, 1),
(default, 'Telha', 'Vermelho', 58, 5);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60 order by valor;
select * from tb_produto where produto like '%C%';
select * from tb_produto p join tb_categoria c on p.id_categoria = c.id order by p.produto;
select * from tb_produto p join tb_categoria c on p.id_categoria = c.id where c.categoria = 'Lâmpadas' order by p.produto;