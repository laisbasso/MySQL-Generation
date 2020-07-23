create database db_generationGameOnline;
use db_generationGameOnline;

create table tb_classe(
id smallint not null auto_increment,
periodo varchar(10) not null,
representante varchar(30) not null,
primary key(id)
);

create table tb_personagem(
id smallint not null auto_increment,
user varchar(10) not null,
ataque smallint not null,
defesa smallint not null,
id_classe smallint not null,
primary key(id),
foreign key(id_classe) references tb_classe(id)
);

insert into tb_classe values
(default, 'Vespertino', 'Mary'),
(default, 'Matutino', 'Sid'),
(default, 'Vespertino', 'Roger'),
(default, 'Noturno', 'Lucas'),
(default, 'Vespertino', 'Cami');

insert into tb_personagem values
(default, 'Mary', 3000, 2500, 1),
(default, 'Sid', 1200, 1300, 2),
(default, 'Roger', 250, 0, 3),
(default, 'Lucas', 1000, 2000, 4),
(default, 'Cami', 1500, 1700, 5);

select * from tb_personagem where ataque > 2000 order by user;
select * from tb_personagem where defesa between 1000 and 2000 order by user;
select * from tb_personagem where user like '%CA%' order by user;
select * from tb_personagem p join tb_classe c on p.id_classe = c.id;
select * from tb_personagem p join tb_classe c on p.id_classe = c.id where c.periodo = 'Vespertino' order by user;