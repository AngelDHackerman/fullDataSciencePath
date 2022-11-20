
-- * Este script nos devuelve la fecha mas actual (fecha maxima (MAX)) de inscripcion 
-- * de algun alumno segun cada carrera (carrera_id)

SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos 
GROUP BY carrera_id
ORDER BY carrera_id DESC;



-- ? Ordenando por el minimo: 
-- Devuelve el primer alumno en la lista (ordenado de manera alfabetica)
-- segun la lista del tutor_id

SELECT tutor_id, MIN(nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;