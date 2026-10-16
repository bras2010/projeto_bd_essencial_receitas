CREATE TABLE estoque(
 id_estoque SERIAL PRIMARY KEY,
 id_mercado int not null,
 id_inrediente int not null,
 preco_unitario decimal(10,2) not null,
 quantidade_disponivel decimal(10,2) not null
);

SELECT * FROM estoque;
