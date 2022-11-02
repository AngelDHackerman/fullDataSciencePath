-- Desde Query tool en PgAdmin interface: 

SELECT version(); 



CREATE DATABASE transporte;

CREATE TABLE tren ( id serial NOT NULL, modelo character varying, 
				capacidad integer, CONSTRAINT tren_pkey PRIMARY KEY (id) );

INSERT INTO tren( modelo, capacidad ) VALUES ('Volvo 1', 100);

SELECT * FROM tren;

UPDATE tren SET modelo = 'Honda 0726' WHERE id = 1;

DELETE FROM tren WHERE ID = 1;



-- check the current date: 

SELECT current_date;

-- Creando tablas particionadas: 

CREATE TABLE public.bitacora_viaje
(
    id serial,
    id_viaje integer,
    fecha date
) PARTITION BY RANGE (fecha);

ALTER TABLE IF EXISTS public.bitacora_viaje
    OWNER to postgres;