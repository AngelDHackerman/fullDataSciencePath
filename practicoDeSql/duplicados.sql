
-- ! Asi vemos los datos repetidos: 

SELECT (
	platzi.alumnos.nombre,
	platzi.alumnos.apellido,
	platzi.alumnos.email,
	platzi.alumnos.colegiatura,
	platzi.alumnos.fecha_incorporacion,
	platzi.alumnos.carrera_id,
	platzi.alumnos.tutor_id
)::text, COUNT(*)
FROM platzi.alumnos
GROUP BY platzi.alumnos.nombre,
		platzi.alumnos.apellido,
		platzi.alumnos.email,
		platzi.alumnos.colegiatura,
		platzi.alumnos.fecha_incorporacion,
		platzi.alumnos.carrera_id,
		platzi.alumnos.tutor_id
HAVING COUNT(*) > 1;



SELECT * 
FROM platzi.alumnos AS ou 
WHERE ( 
	SELECT COUNT(*)	
	FROM platzi.alumnos AS inr
	WHERE ou.id = inr.id
) > 1;



SELECT (platzi.alumnos.*)::text, COUNT(*)  -- ::text, esto es un cast, en SQL, de formato de tablas lo pasamos a texto crudo
FROM platzi.alumnos
GROUP BY platzi.alumnos.*
HAVING COUNT (*) > 1;