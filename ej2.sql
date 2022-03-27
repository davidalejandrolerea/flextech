-- creacion de tabla2 para ejecricio 2

CREATE TABLE public.tabla2
(
    division_id bigint NOT NULL,
    year numeric(10),
    revenue numeric(10)
);

ALTER TABLE IF EXISTS public.tabla2
    OWNER to postgres;

-- insert de registro de tabla2 

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (1, 2018, 60);

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (1, 2021, 40);

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (1, 2020, 70);

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (2, 2021, -10);

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (3, 2018, 20);

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (3, 2016, 40);

INSERT INTO public.tabla2(
	division_id, year, revenue)
	VALUES (4, 2021, 50);	

--- consulta que devuelve los ingresos positivos del 2021

select division_id from tabla2 where year = 2021 and revenue > 10

