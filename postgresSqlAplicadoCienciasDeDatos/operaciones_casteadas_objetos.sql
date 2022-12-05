
-- ? Asi obtenemos la cantidad minima en de los "items" de la tabla ordenes

SELECT 
	MIN(
		CAST (  -- Cast es para el casteo y luego se indica que lo queremos con in "integer"
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	)
FROM ordenes


-- ? Sacando el minimo, maximo, suma total y el promedio de los objetos

SELECT 
	MIN(
		CAST (  -- Cast es para el casteo y luego se indica que lo queremos con in "integer"
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	MAX (
		CAST (
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	SUM (
		CAST (
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	AVG (
		CAST (
			info -> 'items' ->> 'cantidad' AS INTEGER
		)
	)
FROM ordenes;