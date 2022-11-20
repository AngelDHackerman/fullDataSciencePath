
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



-- ? Mostrando todas las carreras y su nombre

SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY carrera_id DESC;



-- ! Usando un right join

SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	RIGHT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY C.id DESC;


-- ! RIGHT JOIN
-- ? Mostrando las carreras que NO tienen alumnos

SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	RIGHT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY C.id DESC;



-- ! INNER JOIN
-- ? mostrando carreras que tienen alumnos y no hay null's
-- inner join, es probablemente el join mas utilizado.

SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	INNER JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY C.id DESC;