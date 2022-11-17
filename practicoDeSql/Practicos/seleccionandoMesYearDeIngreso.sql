SELECT * 
FROM platzi.alumnos 
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2018 
AND (EXTRACT(MONTH FROM fecha_incorporacion)) = 05;