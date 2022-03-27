--- creacion de tabla del ejercicio 3

CREATE TABLE public.tabla3
(
    id bigint NOT NULL,
    year numeric,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.tabla3
    OWNER to postgres;

-- insert de los registros de la tabla

INSERT INTO public.tabla3(
	id, year)
	VALUES (1, 1776);
	
	INSERT INTO public.tabla3(
	id, year)
	VALUES (2, 2001);
	
	INSERT INTO public.tabla3(
	id, year)
	VALUES (3, 1643);
	
	INSERT INTO public.tabla3(
	id, year)
	VALUES (4, 1865);
	
	INSERT INTO public.tabla3(
	id, year)
	VALUES (5, 1969);

-- solucion del ejercicio de la forma en que pude
SELECT EXTRACT(CENTURY FROM DATE '1776-01-01') FROM tabla3;
SELECT EXTRACT(CENTURY FROM DATE '2001-01-01') FROM tabla3;
SELECT EXTRACT(CENTURY FROM DATE '1643-01-01') FROM tabla3;
SELECT EXTRACT(CENTURY FROM DATE '1865-01-01') FROM tabla3;
SELECT EXTRACT(CENTURY FROM DATE '1969-01-01') FROM tabla3;

