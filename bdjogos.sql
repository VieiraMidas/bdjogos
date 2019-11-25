create database BDjogos;
use BDjogos;

create table tipopessoa(
idtipopessoa int primary key not null auto_increment,
descricao_tipopessoa varchar(20) not null);

create table pessoa(
idpessoa int primary key not null auto_increment,
tipopessoa_idtipopessoa int,
nome_pessoa varchar(80) not null,
rg_pessoa varchar(10) not null,
cpf_pessoa varchar(14) not null);

alter table pessoa
add foreign key (tipopessoa_idtipopessoa)
references tipopessoa(idtipopessoa);

create table cliente(
idcliente int primary key not null auto_increment,
pessoa_idpessoa int,
pai_cliente varchar(80),
mae_cliente varchar(80),
nick_cliente varchar(12) not null,
senha_cliente varchar(8) not null);

alter table cliente
add foreign key (pessoa_idpessoa)
references pessoa(idpessoa);

create table tipolocal(
idtipolocal int primary key not null auto_increment,
descricao_tipolocal varchar(30) not null);

create table endereco(
idendereco int primary key not null auto_increment,
tipolocal_idtipolocal int,
pessoa_idpessoa int,
logradouro varchar(70) not null,
numero_endereco int not null,
complemento_endereco varchar(100) not null,
bairro_endereco varchar(30) not null,
cep_endereco varchar(30) not null,
cidade_endereco varchar(30) not null,
estado_endereco char(2) not null);

alter table endereco
add foreign key (tipolocal_idtipolocal)
references tipolocal(idtipolocal);

alter table endereco
add foreign key (pessoa_idpessoa)
references pessoa(idpessoa);

create table contato(
idcontato int primary key not null auto_increment,
tipolocal_idtipolocal int,
pessoa_idpessoa int,
telefone_contato varchar(13) not null,
email_contato varchar(30) not null);

alter table contato
add foreign key (tipolocal_idtipolocal)
references tipolocal(idtipolocal);

alter table contato
add foreign key (pessoa_idpessoa)
references pessoa(idpessoa);

create table funcionario(
idfuncionario int primary key not null auto_increment,
pessoa_idpessoa int,
sexo char(1) not null,
idade int not null);

alter table funcionario
add foreign key (pessoa_idpessoa)
references pessoa(idpessoa);

create table videogame(
idvideogame int primary key not null auto_increment,
modelo_videogame varchar(40) not null,
ns_videogame varchar(24) not null);

create table jogos(
idjogos int primary key not null auto_increment,
nome_jogo varchar(60) not null,
descricao_jogo varchar(120) not null,
genero_jogo varchar(20) not null,
produtora_jogo varchar(40) not null);

create table aluguel(
idaluguel int primary key not null auto_increment,
funcionario_idfuncionario int,
videogame_idvideogame int,
cliente_idcliente int,
jogos_idjogos int,
valor_aluguel real,
data_aluguel date);

alter table aluguel
add foreign key (funcionario_idfuncionario)
references funcionario(idfuncionario);

alter table aluguel
add foreign key (videogame_idvideogame)
references videogame(idvideogame);

alter table aluguel
add foreign key (cliente_idcliente)
references cliente(idcliente);

alter table aluguel
add foreign key (jogos_idjogos)
references jogos(idjogos);

show tables;
describe tipopessoa;
describe pessoa;
describe cliente;
describe tipolocal;
describe endereco;
describe contato;
describe funcionario;
describe videogame;
describe jogos;
describe aluguel;