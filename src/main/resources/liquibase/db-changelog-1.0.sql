CREATE SEQUENCE produto_id_seq
	INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

CREATE TABLE produto (
	id bigint PRIMARY KEY DEFAULT NEXTVAL('produto_id_seq'::regclass),
	nome character varying(255) NOT NULL,
	valor numeric(30, 2) NOT NULL,
	quantidade bigint
);

CREATE SEQUENCE usuario_id_seq
	INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

CREATE TABLE usuario (
	id bigint PRIMARY KEY DEFAULT NEXTVAL('usuario_id_seq'::regclass),
	nome character varying(150) NOT NULL,
	senha character varying(50) NOT NULL
);