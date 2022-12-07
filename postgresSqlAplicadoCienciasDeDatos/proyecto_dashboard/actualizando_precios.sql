
-- ? Este script muestra el valor en pesos mexicanos, basado en el cambio de USD

SELECT peliculas.pelicula_id,
		tipos_cambio.tipo_cambio_id,
		tipos_cambio.cambio_usd * peliculas.precio_renta AS precio_mxn
FROM peliculas,
	tipos_cambio
WHERE tipos_cambio.codigo = 'MXN'
ORDER BY precio_mxn DESC;