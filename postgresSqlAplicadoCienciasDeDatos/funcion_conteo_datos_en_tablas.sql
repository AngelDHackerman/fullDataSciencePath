
-- ? Regresa un conteo de todos los datos encontrados en una tabla

CREATE OR REPLACE FUNCTION count_total_movies()  -- creamos la funcion 
RETURNS int -- regresa un numero 
LANGUAGE plpgsql 
AS $$ --abrimos la estructura de plpg 
BEGIN
	RETURN COUNT (*) FROM peliculas;

END
$$


-- Invocando la funcion en pgAdmin

SELECT count_total_movies();