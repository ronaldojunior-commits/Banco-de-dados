create table clientes(
	nome varchar(100) not null,
    senhaCliente varchar(100) not null,
    tel varchar(100) not null,
    email varchar(100) unique
);

create table produtos(
	idProd int primary key auto_increment,
	nomeProd varchar(100) not null,
    codigoProd varchar(100) not null,
    preco decimal not null,
    qtdProd varchar(100) not null
);

create table pedidos(
	numeroPedido varchar(100) primary key,
    dataPedido date not null,
    qtdProdCompra varchar(100) not null,
    cliente varchar(100) not null,
    codigo_prod varchar(100) not null,
    
    foreign key (cliente) references clientes(nome),
    foreign key (codigo_prod) references produtos(codigoProd)
);

insert into clientes (nome, senhaCliente, tel, email) values ("Anildo", "111", "719", "anildo@gmail.com");
insert into clientes (nome, senhaCliente, tel, email) values ("Jake", "222", "7199", "jake@gmail.com");
insert into clientes (nome, senhaCliente, tel, email) values ("Cauan Couto", "333", "71999", "cauancouto@gmail.com");

insert into produtos (idProd, nomeProd, codigoProd, preco, qtdProd) values (1, "Kmed Ice", "1010", "39.90", "50");
insert into produtos (idProd, nomeProd, codigoProd, preco, qtdProd) values (2, "Kmed Hot", "2020", "49.90", "50");
insert into produtos (idProd, nomeProd, codigoProd, preco, qtdProd) values (3, "Kmed Suave", "3030", "29.90", "50");

insert into pedidos (numeroPedido, dataPedido, qtdProdCompra, cliente, codigo_prod) values ("1111111111", "2026-04-28", "1", "Anildo", "1010");
insert into pedidos (numeroPedido, dataPedido, qtdProdCompra, cliente, codigo_prod) values ("2222222222", "2026-05-28", "1", "jake", "2020");
insert into pedidos (numeroPedido, dataPedido, qtdProdCompra, cliente, codigo_prod) values ("3333333333", "2026-07-21", "1", "Cauan Couto", "3030");

select * from clientes;
select * from produtos;
select * from pedidos;

