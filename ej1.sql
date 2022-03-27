-- creacion de la tabla para el ejercicio 1

CREATE TABLE public.tabla1
(
    id bigint NOT NULL,
    valor numeric,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.tabla2
    OWNER to postgres;

-- insert de registro a la tabla1

INSERT INTO public.tabla1(
	id, valor)
	VALUES (1,-56);

INSERT INTO public.tabla1(
	id, valor)
	VALUES (2,76);

INSERT INTO public.tabla1(
	id, valor)
	VALUES (3,-84);

INSERT INTO public.tabla1(
	id, valor)
	VALUES (4,96);

INSERT INTO public.tabla1(
	id, valor)
	VALUES (5,-47);

-- consulta que devuelve los valores opuestos

update tabla1 set valor = valor*-1 



	