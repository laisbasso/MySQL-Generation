create database rh;
use rh;

create table funcionarios(
id bigint(6) not null auto_increment,
nome varchar(50) not null,
nascimento date not null,
cargo varchar(30) not null,
salario decimal(7,2) not null,
primary key (id)
);

insert into funcionarios values
(default, 'Lucia Maria dos Santos', '1950-12-03', 'CEO', '12500.00'),
(default, 'Valéria Silva', '1970-02-25', 'Diretora de Marketing', '7900'),
(default, 'Roberto Juarez', '1984-07-27', 'Designer de Produto', '5600'),
(default, 'Joana Silveira', '1998-04-14', 'Estagiária de Finanças', '1700'),
(default, 'Paulo Mendes', '1975-05-29', 'Segurança', '3000')
;

select nome, salario from funcionarios where salario > '2000';
select nome, salario from funcionarios where salario < '2000';
update funcionarios set cargo = 'Auxiliar contábil', salario = '2500' where id = '4';
select * from funcionarios;