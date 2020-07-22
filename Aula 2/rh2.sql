create database db_rh2;
use db_rh2;

create table tb_cargo(
id smallint not null auto_increment,
profissao varchar(30) not null,
salario decimal(7,2) not null,
primary key(id)
);

create table tb_funcionario (
id smallint not null auto_increment,
nome varchar(60) not null,
nascimento date not null,
id_cargo smallint not null,
pcd boolean not null,
primary key(id),
foreign key(id_cargo) references tb_cargo(id)
);

insert into tb_cargo values
(default, 'Fotógrafo jornalista', 5500),
(default, 'Quadrinista', 1800),
(default, 'Ilustrador', 3500),
(default, 'Redator', 5500),
(default, 'Diretor de arte', 7500);

insert into tb_funcionario values
(default, 'Paulo Moreira', '1984-12-14', 2, false),
(default, 'Daniela Vicente', '1980-04-24', 5, false),
(default, 'Camila Alves', '2000-08-21', 2, true),
(default, 'Karina Silva', '1999-03-25', 3, false),
(default, 'Arlindo César', '1974-02-19', 4, true);

select f.id, f.nome, c.profissao, c.salario from tb_funcionario f
join tb_cargo c
on c.id = f.id_cargo
where salario > 2000
order by f.nome;

select f.id, f.nome, c.profissao, c.salario from tb_funcionario f
join tb_cargo c 
on c.id = f.id_cargo
where salario between 1000 and 2000
order by f.nome;

select * from tb_funcionario where nome like '%C%' order by nome;

select f.id, f.nome, c.profissao from tb_funcionario f
join tb_cargo c
on f.id_cargo = c.id
where c.profissao = 'Quadrinista'
order by f.nome;

select * from tb_funcionario f
join tb_cargo c
where c.id = f.id_cargo
order by f.nome;