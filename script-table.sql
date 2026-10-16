CREATE TABLE item_pedido(
 id_item_pedido int PRIMARY KEY,
 id_pedido int not null,
 id_ingrediente int not null,
 quantidade decimal(10,2) not null,
 preco_unitario decimal(10,2) not null,
 foi_subtituido boolean
);
create table public.usuario (
    id_usuario serial not null,
    nome character varchar(100) not null,
    email character varchar(100) not null,
    senha_hash character var(255) not null,
    cpf_criptografado character varchar(255) not null,
    tipo_perfil character varchar(255) not null,
    data_nascimento date not null,
    idioma_preferido character varchar(5) null,
    eh_assinante_premium boolean null,
    termo_lgpd_aceito boolean not null,
    data_criacao timestamp without time zone null,
    constraint usuario_pkey primary key (id_usuario)
) TABLESPACE pg_default;
CREATE TABLE ingredientes(
 id_ingrediente SERIAL PRIMARY KEY,
 nome varchar (100) not null,
 categoria varchar (50) not null,
 unidade_medida_padrao varchar (20) not null
);

SELECT * FROM ingredientes;
CREATE TABLE usuario(
 id_usuario SERIAL PRIMARY KEY,
 nome varchar(100) not null,
 email varchar(100) not null,
 senha_hash varchar(255) not null,
 cpf_criptografado varchar(255) not null,
 tipo_perfil varchar(255) not null,
 data_nascimento date not null, 
 idioma_preferido varchar(5),
 eh_assinante_premium  boolean,
 termo_lgpd_aceito boolean not null,
 data_criacao timestamp
);

SELECT * FROM usuario;
CREATE TABLE estoque(
 id_estoque SERIAL PRIMARY KEY,
 id_mercado int not null,
 id_inrediente int not null,
 preco_unitario decimal(10,2) not null,
 quantidade_disponivel decimal(10,2) not null
);

SELECT * FROM estoque;
 quantidade_disponivel numeric(10, 2) not null,
  constraint estoque_pkey primary key (id_estoque)
) TABLESPACE pg_default;

create table public.item_pedido (
  id_item_pedido serial not null,
  fk_pedido integer null,
  fk_ingrediente integer null,
  quantidade numeric(10, 2) null,
  preco_unitario numeric(10, 2) null,
  foi_substituido boolean null,
  constraint item_pedido_pkey primary key (id_item_pedido)
) TABLESPACE pg_default;
CREATE TABLE despesa_virtual (
    id_despesa SERIAL PRIMARY KEY,
    fk_despesa INT,
    fk_ingrediente INT,
    quantidade decimal(10,2),
    unidade_medida varchar(20),
    data_atualizacao timestamp
);

SELECT * FROM despesa_virtual;
create table public.mercado_parceiro (
    id_mercado integer not null,
    nome varchar(100) not null,
    categoria varchar(50) not null,
    unidade_medida_padrao  varchar(20) not null,
    constraint mercado_parceiro_pkey primary key (id_mercado)
) TABLESPACE pg_default;

