
-- * Este script nos devuelve la fecha mas actual (fecha maxima (MAX)) de inscripcion 
-- * de algun alumno segun cada carrera (carrera_id)

SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos 
GROUP BY carrera_id
ORDER BY carrera_id DESC;