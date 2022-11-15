

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
		-- Muestra la segunda colegiatura mas alta del tutor con el id 20. 

SELECT * FROM platzi.alumnos AS datos_alumnos
INNER JOIN (  -- Este de abajo es un subquery que nos da el valor de colegiatura que queremos comparar.
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC 
	LIMIT 1 OFFSET 1
) AS segunda_mayor_colegiatura  -- * El subquery queda nombrado como "segunda_mayor_colegiatura"
ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura


-- ? Forma mas simple de hacerlo: 

SELECT * 
FROM platzi.alumnos AS datos_alumnos
WHERE colegiatura = ( -- where colegiatura, sea igual a lo que nos arroje el siguiente subquery
	SELECT DISTINCT colegiatura 
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC 
	LIMIT 1 OFFSET 1
)