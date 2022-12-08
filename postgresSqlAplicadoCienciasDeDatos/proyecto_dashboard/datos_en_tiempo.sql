
-- ? Este script cuenta, cuantas veces una pelicula fue rentada en el año.

SELECT date_part('year', rentas.fecha_renta) AS anio, -- * muestra el año de cuando la pelicula fue rentada
		date_part('month', rentas.fecha_renta) AS mes,  -- * muestra el mes de cuando la pelicula fue rentada
		peliculas.titulo,
		COUNT (*) AS numero_rentas
FROM 	rentas
	INNER JOIN inventarios ON rentas.inventario_id = inventarios.inventario_id
	INNER JOIN peliculas ON peliculas.pelicula_id = inventarios.pelicula_id
GROUP BY anio, mes, peliculas.pelicula_id
ORDER BY anio ASC, numero_rentas DESC;



-- ? Este script muestra el año y el mes que mas rentas tuvieron en nuestras tablas

SELECT date_part('year', rentas.fecha_renta) AS anio, -- * muestra el año de cuando la pelicula fue rentada
		date_part('month', rentas.fecha_renta) AS mes,  -- * muestra el mes de cuando la pelicula fue rentada
		COUNT (*) AS numero_rentas
FROM 	rentas
GROUP BY anio, mes
ORDER BY anio, mes;