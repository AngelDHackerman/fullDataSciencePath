
-- Mostrando solo los ID's introducidos

SELECT * 
FROM platzi.alumnos 
WHERE id IN (1, 3, 5, 7, 9)



-- Mostrando por el ID del tutor 

SELECT * 
FROM platzi.alumnos 
WHERE id IN ( -- este subquery nos devuelve los ID generales que tiene el tutor_id 30.
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
)


-- ! Aqui se muestran los que NO estan el los ID indicados 

SELECT * 
FROM platzi.alumnos 
WHERE id NOT IN ( 
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
)