create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id smallint not null auto_increment,
categoria varchar(35) not null,
promocao boolean not null,
primary key(id)
);

create table tb_curso(
id smallint not null auto_increment,
curso varchar(60) not null,
valor decimal(6,2) not null,
autor varchar(50) not null,
id_categoria smallint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'Tecnologia', false),
(default, 'Alimentação', false),
(default, 'Educação', true),
(default, 'Economia', false),
(default, 'História', true);

insert into tb_curso values
(default, 'Curso completo de Spring Boot', 55, 'Márcio Freitas', 1),
(default, 'Curso de React Native avançado', 65, 'Juliana Farias', 1),
(default, 'Curso de PHP básico', 35, 'Ana Silveira', 1),
(default, 'A História do Brasil', 50, 'Beatriz Lopes', 5),
(default, 'Organize suas finanças!', 50, 'Maria Silva', 4);

select * from tb_curso where valor > 50 order by curso;
select * from tb_curso where valor between 3 and 60 order by valor desc;
select * from tb_curso where curso like '%J%' order by curso;
select * from tb_curso c join tb_categoria ca on c.id_categoria = ca.id;
select * from tb_curso c join tb_categoria ca on c.id_categoria = ca.id where ca.categoria = 'Tecnologia' order by c.curso;