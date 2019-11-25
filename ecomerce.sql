create database ecomerce;
use ecomerce;

create table clientes (
ID_Cliente int not null primary key auto_increment,
nome varchar(80) not null,
RG varchar (10) not null,
CPF char (14) not null,
endereco varchar (200) not null
);

create table pedidos(
ID_Pedido int not null primary key auto_increment,
cupom varchar(20),
transportadora varchar(30) not null,
dt_pedido date not null,
frete real not null
);

create table itens(
N_Pedido int not null primary key auto_increment,
garantia date not null,
valor real not null,
quantidade int not null
);

create table produtos(
ID_Produtos int not null primary key auto_increment,
valor real not null,
descricao varchar(150) not null,
cor varchar(20) not null,
quantidade int not null
);