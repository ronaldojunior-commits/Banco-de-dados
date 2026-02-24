-- create
create table cliente (
  id int,
  nome varchar(254) not null,
  email varchar(254) not null,
  cpf char(14) not null,
  primary key(id)
);

create table carro (
  id int,
  modelo varchar(254) not null,
  cor varchar(254) not null,
  preco decimal(10,3) not null,
  cliente_id int,
  primary key(id),
  foreign key (cliente_id) references cliente(id) 
);

INSERT INTO cliente VALUES (01,'Anildo', 'anildomatos@gmail.com', '777.777.777-77');
INSERT INTO cliente VALUES (02,'Neymar JR', 'neymarjr10@santosfc.com', '777.777.777-77');
INSERT INTO cliente VALUES (03,'Cristiano Ronaldo', 'cr7@alnassrfc.com', '777.777.777-77');
INSERT INTO cliente VALUES (04,'Ronaldo Jr', 'ronaldojr@gmail.com', '777.777.777-77');
INSERT INTO cliente VALUES (05,'Messi', 'lionelmessi@intermiamifc.com', '777.777.777-77');
INSERT INTO cliente VALUES (06,'Dembele', 'dembele@parissaintgermain.com', '777.777.777-77');
INSERT INTO cliente VALUES (07,'Everton Ribeiro', 'evertonribeiro@ecbahia.com', '777.777.777-77');
INSERT INTO cliente VALUES (08,'Erick Pulga', 'erickpulga@ecbahia.com', '777.777.777-77');
INSERT INTO cliente VALUES (09,'De Arrascaeta', 'arrascaeta@crfflamengo.com', '777.777.777-77');
INSERT INTO cliente VALUES (10,'Rodrygo', 'rodrygogoes@realmadridcf.com', '777.777.777-77');

INSERT INTO carro VALUES (01, 'Corolla XEI', 'Branco', 87.000, 01);
INSERT INTO carro VALUES (02, 'Golf Sportline', 'Preto', 60.000, 02);
INSERT INTO carro VALUES (03, 'Hyundai i30', 'Prata', 41.000, 03);
INSERT INTO carro VALUES (04, 'Yaris Gls', 'Preto', 70.000, 04);
INSERT INTO carro VALUES (05, 'Corsa', 'Branco', 25.000, 05);
INSERT INTO carro VALUES (06, 'Hilux', 'Vermelho', 68.000, 06);
INSERT INTO carro VALUES (07, 'Honda HRV', 'Branco', 198.000, 07);
INSERT INTO carro VALUES (08, 'Honda Civic', 'Azul Marinho', 110.000, 08);
INSERT INTO carro VALUES (09, 'Jetta', 'Preto', 57.000, 09);
INSERT INTO carro VALUES (10, 'Fusion', 'Branco', 124.000, 10);

select * from cliente;
select * from carro;
