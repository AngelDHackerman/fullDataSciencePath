
-- ? Usando variables y sacando los promedios de duraction, precio entre otros

CREATE OR REPLACE FUNCTION movies_stats()
RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE -- asi es como se declaran las variables sen plpgsql, para asignar valor usamos el " := " y su valor "real" inicial es 0.0
	total_rated_r REAL := 0.0;
	total_larger_than_100 REAL := 0.0;
	total_published_2006 REAL := 0.0;
	average_duration REAL := 0.0;
	average_rental_price REAL := 0.0;
BEGIN
	total_rated_r := COUNT(*) FROM peliculas WHERE clasificacion = 'R'

END
$$

