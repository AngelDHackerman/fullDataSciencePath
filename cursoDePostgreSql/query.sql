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

-- this is the partition of the table above:

CREATE TABLE bitacora_viaje202201 PARTITION OF bitacora_viaje
FOR VALUES FROM ('2020-01-01') TO ('2023-01-01');

-- then we can insert the values we want to add.

INSERT INTO public.bitacora_viaje(
	id_viaje, fecha)
	VALUES (1, '2020-01-01');
	
-- after that we can consult the partition of "bitacora_viaje":

SELECT * FROM bitacora_viaje;



-- ! Joins: 

-- Esto muestra los vaijes tomados por los pasajeros: 

SELECT * from pasajero
JOIN viaje ON (viaje.id_pasajero = pasajero.id);

-- Muestra los pasajeros que no han tomado viajes: 

SELECT * FROM pasajero
LEFT JOIN viaje ON (viaje.id_pasajero = pasajero.id)
WHERE viaje.id IS NULL; 


-- ! On conflict 

INSERT INTO public.estacion(
	id, nombre, direccion)
	VALUES (1, 'Nombre X', 'Dire')  -- en este caso intentamos modificar el id pero este ya existe
	ON CONFLICT (id) DO UPDATE SET nombre = 'Nombre X', direccion = 'Dire';  -- por lo tanto on conflict resuelve este problema con la opcion de update


-- ! Like and ILike

SELECT nombre 
	FROM public.pasajero
	WHERE nombre ILIKE 'a%';


-- ! Not and IS Not

SELECT * 
	FROM public.tren
	WHERE modelo IS NOT NULL;



-- Vistas materializadas 

	-- Definicion de la vista materializada: 

SELECT viaje.id,
    viaje.id_pasajero,
    viaje.id_trayecto,
    viaje.inicio,
    viaje.fin
  FROM viaje
  WHERE viaje.inicio > '22:00:00'::time without time zone;


REFRESH MATERIALIZED VIEW despues_noche_mview;