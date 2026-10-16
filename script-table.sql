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
