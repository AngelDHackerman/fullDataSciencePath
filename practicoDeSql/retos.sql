
		-- ? El primero mas alto


SELECT * from platzi.alumnos
FETCH FIRST 1 ROWS ONLY;  -- esto trae el primer resultado, es el estandar de SQL server

SELECT * from platzi.alumnos
limit 1; -- mismo de arriba pero este es mySql



-- Mostrando los primeros 5 resultados: 

SELECT * FROM platzi.alumnos 
FETCH FIRST 5 ROWS ONLY; 


SELECT * FROM platzi.alumnos 
LIMIT 5; 


SELECT * FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, * 
	FROM platzi.alumnos
) AS alumnos_with_row_nums
WHERE row_id < 6; 




		-- ? El segundo mas alto


SELECT DISTINCT colegiatura  -- muestra las colegiaturas que no se repiten
FROM platzi.alumnos AS a1
WHERE 2 = (  -- where 2: nos traera el segundo resultado que arroje el subquery de abajo
	SELECT COUNT (DISTINCT colegiatura)  -- Este subquery va a contar las distintas colegiaturas
	FROM platzi.alumnos AS a2
	WHERE a1.colegiatura <= a2.colegiatura
)

		-- * Otra manera pero mas simple

SELECT DISTINCT colegiatura
FROM platzi.alumnos
ORDER BY colegiatura DESC 
LIMIT 1 OFFSET 1;  -- ? limit 1: solo muestra 1, offset 1: saltate el primer resultado. 


		-- Mostrando el resultado pero con un subquery 