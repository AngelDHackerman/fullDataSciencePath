
-- ? Este script muestra el valor en pesos mexicanos, basado en el cambio de USD

SELECT peliculas.pelicula_id,
		tipos_cambio.tipo_cambio_id,
		tipos_cambio.cambio_usd * peliculas.precio_renta AS precio_mxn
FROM peliculas,
	tipos_cambio
WHERE tipos_cambio.codigo = 'MXN'
ORDER BY precio_mxn DESC;



-- todo: Codigo para crear el Trigger Function, lenguaje plPgSql

BEGIN 
	INSERT INTO precio_peliculas_tipo_cambio (
		pelicula_id,
		tipo_cambio_id,
		precio_tipo_cambio,
		ultima_actualizacion
	)
	SELECT NEW.pelicula_id,  -- ? NEW, indica que el query sera seleccionado de la nueva insercion de "pelicula_id"
		tipos_cambio.tipo_cambio_id,
		tipos_cambio.cambio_usd * NEW.precio_renta AS precio_tipo_cambio,
		CURRENT_TIMESTAMP
	FROM tipos_cambio
	WHERE tipos_cambio.codigo = 'MXN'; -- ? RETURN NEW, es para que regrese los registros que estaba actualizando.
	RETURN NEW;
END 



-- todo: Crando el Trigger tal cual: 

