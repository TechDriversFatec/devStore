CREATE TABLE public.estado(
    estado_codigo character(2) COLLATE pg_catalog."default" NOT NULL,
    estado_sigla character(2) COLLATE pg_catalog."default",
    estado_descricao character(50) COLLATE pg_catalog."default",
    CONSTRAINT estado_pkey PRIMARY KEY (estado_codigo),
    CONSTRAINT estado_codigo FOREIGN KEY (estado_codigo)
        REFERENCES public.estado (estado_codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE public.estado
    OWNER to postgres;
	
CREATE TABLE public.municipio(
    municipio_codigo character(5) COLLATE pg_catalog."default" NOT NULL,
    municipio_descricao character(60) COLLATE pg_catalog."default",
    estado_codigo character(2) COLLATE pg_catalog."default",
    CONSTRAINT municipio_pkey PRIMARY KEY (municipio_codigo)
);

ALTER TABLE public.municipio
    OWNER to postgres;
	
CREATE TABLE public.area_imovel(
    cod_imovel character varying COLLATE pg_catalog."default" NOT NULL,
    num_area character varying COLLATE pg_catalog."default",
    num_modulo character varying COLLATE pg_catalog."default",
    tipo_imovel character varying COLLATE pg_catalog."default" NOT NULL,
    condicao_l character varying COLLATE pg_catalog."default",
    situacao character varying COLLATE pg_catalog."default",
    geom polygon NOT NULL,
    municipio_codigo character varying(5) COLLATE pg_catalog."default",
    CONSTRAINT pk_cod_imovel PRIMARY KEY (cod_imovel),
    CONSTRAINT area_imovel_municipio_codigo_fkey FOREIGN KEY (municipio_codigo)
        REFERENCES public.municipio (municipio_codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE public.area_imovel
    OWNER to postgres;
	
CREATE TABLE public.tipo_area(
    tipo_id serial NOT NULL,
    tipo_descricao character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT pk_id PRIMARY KEY (tipo_id)
);

ALTER TABLE public.tipo_area
    OWNER to postgres;
	
CREATE TABLE public.area(
    idf character varying COLLATE pg_catalog."default" NOT NULL,
    nom_tema character varying COLLATE pg_catalog."default" NOT NULL,
    num_area character varying COLLATE pg_catalog."default",
    geom polygon NOT NULL,
    municipio_codigo character varying(5) COLLATE pg_catalog."default",
    tipo_id integer,
    CONSTRAINT pk_idf PRIMARY KEY (idf),
    CONSTRAINT area_municipio_codigo_fkey FOREIGN KEY (municipio_codigo)
        REFERENCES public.municipio (municipio_codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT area_tipo_id_fkey FOREIGN KEY (tipo_id)
        REFERENCES public.tipo_area (tipo_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE public.area
    OWNER to postgres;
	
CREATE TABLE public.integracao(
    area_arquivo character(50) COLLATE pg_catalog."default",
    integrado boolean,
    extensao_dbf boolean,
    extensao_shp boolean,
    extensao_shx boolean,
    extensao_prj boolean,
    shape_arquivo character(50) COLLATE pg_catalog."default",
    municipio_codigo character(5) COLLATE pg_catalog."default",
    data_hora_integracao timestamp without time zone,
    CONSTRAINT fk_municipio_codigo FOREIGN KEY (municipio_codigo)
        REFERENCES public.municipio (municipio_codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE public.integracao
    OWNER to postgres;
	
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('11', 'Rondônia', 'RO');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('12', 'Acre', 'AC');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('13', 'Amazonas', 'AM');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('14', 'Roraima', 'RR');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('15', 'Pará', 'PA');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('16', 'Amapá', 'AP');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('17', 'Tocantins', 'TO');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('21', 'Maranhão', 'MA');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('22', 'Piauí', 'PI');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('23', 'Ceará', 'CE');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('24', 'Rio Grande do Norte', 'RN');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('25', 'Paraíba', 'PB');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('26', 'Pernambuco', 'PE');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('27', 'Alagoas', 'AL');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('28', 'Sergipe', 'SE');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('29', 'Bahia', 'BA');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('31', 'Minas Gerais', 'MG');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('32', 'Espírito Santo', 'ES');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('33', 'Rio de Janeiro', 'RJ');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('35', 'São Paulo', 'SP');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('41', 'Paraná', 'PR');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('42', 'Santa Catarina', 'SC');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('43', 'Rio Grande do Sul', 'RS');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('50', 'Mato Grosso do Sul', 'MS');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('51', 'Mato Grosso', 'MT');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('52', 'Goiás', 'GO');
INSERT INTO estado(estado_codigo, estado_descricao, estado_sigla) VALUES('53', 'Distrito Federal', 'DF');
