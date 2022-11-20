
-- ? Muestra las carreras que mas se repiten y cuantas veces se repiten.

SELECT carrera_id, COUNT(*) AS cuenta  -- COUNT(*) AS cuenta, cuenta el numero de veces que la carrera se repite
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC;


-- ! Esto es un LEFT JOIN exclusive
-- ? Muestra las carreras donde su "id" es "null"

SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	LEFT JOIN 
		platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL  -- Esta es la sintaxis correcta para los id NULL
ORDER BY a.carrera_id;

