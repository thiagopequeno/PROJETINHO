-- PROJETO INDIVIDUAL

create database projeto;
use projeto;
show tables;
create table usuario(
idusuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45));
select*from usuario;


create table sorteio(
idsorteio int,
nomesorteio varchar(45),
fksorteio int,
foreign key (fksorteio) references usuario (idusuario),
primary key (fksorteio,idsorteio));

create table personagem_cadastrado(
idpersonagem int primary key,
nomepersonagem varchar(45),
fkpersonagem int,
foreign key (fkpersonagem) references usuario(idusuario));

-- USUARIO

insert into usuario values
(1,'thiago','thiagohalls120','thiago@sptech.school');

-- insert into sorteio

insert into sorteio values

(1,'rengoku',1);

insert into sorteio values
(2,'tajiro',2),
(3,'inosuke',3),
(4,'zenitu',4),
(5,'nezuko',5),
(6,'uzui',6),
(7,'tomioka',7),
(8,'obanai',8),
(9,'akaza',9),
(10,'kokushibo',10);

insert into personagem_cadastrado values
(1,'nezuko',1),
(2,'tanjiro',2),
(3,'zenitsu',3),
(4,'rengoku',4),
(5,'uzui',5),
(6,'shinobu',6),
(7,'tomioka',2),
(8,'obanai',3),
(9,'mitsuri',7),
(10,'sanemi',5),
(11,'gyomei',1),
(12,'akaza',1),
(13,'muzan',9),
(14,'kokushibo',2);

insert into personagem_cadastrado values
(2,'rengoku',1);
delete from sorteio where idsorteio>1;



-- SELECTS
select * from usuario;

select count(personagem)  from usuario where personagem like '%sanemi%';

alter table usuario add column personagem varchar(45);

select * from usuario join personagem_cadastrado on idusuario=fkpersonagem;

select * from usuario join sorteio on idusuario=fksorteio;








