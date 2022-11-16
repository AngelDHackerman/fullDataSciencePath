
-- Asi tomamos el año que esta dentro de la columna de la tabla: 

SELECT EXTRACT(YEAR FROM fecha_incorporacion) AS year_incorporacion 
FROM platzi.alumnos;