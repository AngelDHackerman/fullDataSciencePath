
-- ? Este script muestra primero el nombre del alumno y luego su tutor asignado.
-- Notese este inner join usa la misma tabla para hacer la operacion.


SELECT  
    CONCAT(a.nombre, ' ', a.apellido) AS alumno, -- a, es por alumno
		CONCAT(t.nombre, ' ', t.apellido) AS tutor  -- t, es por tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id;



-- ? Este nos muestra que tutor tiene mas alumnos

SELECT 
    CONCAT(t.nombre, ' ', t.apellido) AS tutor,
		COUNT(*) AS alumnos_por_tutor  -- Aqui se hace la cuenta de alumnos por tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t 
	ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC;


SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
		COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t 
	ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10;