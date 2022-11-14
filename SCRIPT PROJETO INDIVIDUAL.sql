-- PROJETO INDIVIDUAL

create database projeto;
use projeto;

create table usuario(
idusuario int primary key,
login varchar(45),
senha varchar(45));

create table cadastro(
idcadastro int primary key,
nome varchar(45),
email varchar(45),
senha varchar(45),
confirmarsenha varchar(45),
fkusuario int,
foreign key (fkusuario) references usuario(idusuario));

create table sorteio(
idsorteio int,
nomesorteio varchar(45),
fksorteio int,
foreign key (fksorteio) references usuario (idusuario),
primary key (fksorteio,idsorteio));

create table personagem_cadastrado(
idpersonagem int,
nomepersonagem varchar(45),
fkpersonagem int,
foreign key (fkpersonagem) references usuario(idusuario));

-- USUARIO

insert into usuario values
(1,'thiago','thiagohalls120');

-- cadastro

insert into cadastro values
(1,'thiago','thiago@sptech.school','thiagohalls','thiagohalls',1);

-- insert into sorteio

insert into sorteio values

(1,'rengoku',1);

insert into personagem_cadastrado values
(1,'nezuko',1);

insert into personagem_cadastrado values
(2,'rengoku',1);



-- SELECTS

select * from usuario join cadastro on idusuario=fkusuario;

select * from usuario join personagem_cadastrado on idusuario=fkpersonagem;

select * from usuario join sorteio on idusuario=fksorteio;






