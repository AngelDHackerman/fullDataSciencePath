
-- ? Este script muestra las "top 10 rentas" de peliculas en la base de datos

SELECT 
	peliculas.pelicula_id AS id,
	peliculas.titulo,
	COUNT(*) AS numero_rentas -- * Esto nos dara el numero total de las peliculas rentadas.
FROM rentas	
	-- ? 'Rentas' no esta relacionado con 'peliculas', pero si con 'inventario' que a su vez si esta relacionado con 'peliculas'
	INNER JOIN inventarios ON rentas.inventario_id = inventarios.inventario_id
	INNER JOIN peliculas ON inventarios.pelicula_id = peliculas.pelicula_id
GROUP BY peliculas.pelicula_id
ORDER BY numero_rentas DESC
LIMIT 10;


