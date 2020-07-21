create database escola;
use escola;

create table alunos(
id bigint(6) auto_increment,
nome varchar(50) not null,
nascimento date not null,
bairro varchar(30) not null,
media float(3,2),
primary key (id)
);

insert into alunos values
(default, 'Rodrigo Santos', '2005-12-03', 'Vila das Rosas', '5'),
(default, 'Juliana Silva', '2005-02-25', 'Praça da Árvore', '8'),
(default, 'Samira Juarez', '2005-07-27', 'Vila Mariana', '7'),
(default, 'Ana Silveira', '2005-04-14', 'Jardim São Paulo', '9.5'),
(default, 'Jorge Mendes', '2005-05-29', 'Santana', '4.5');

select nome, media from alunos where media > 7;
select nome, media from alunos where media < 7;
update alunos set media = '7.5' where id = '3';
select * from alunos;