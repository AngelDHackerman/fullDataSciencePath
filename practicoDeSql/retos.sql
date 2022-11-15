
SELECT * from platzi.alumnos
FETCH FIRST 1 ROWS ONLY;  -- esto trae el primer resultado, es el estandar de SQL server

SELECT * from platzi.alumnos
limit 1; -- mismo de arriba pero este es mySql



-- ? Mostrando los primeros 5 resultados: 

SELECT * FROM platzi.alumnos 
FETCH FIRST 5 ROWS ONLY; 


SELECT * FROM platzi.alumnos 
LIMIT 5; 


SELECT * FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, * 
	FROM platzi.alumnos
) AS alumnos_with_row_nums
WHERE row_id < 6; 


