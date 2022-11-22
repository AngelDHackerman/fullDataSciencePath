
-- Mostrando una columna con el numero del "row" y ordenad por la fecha

SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos;


