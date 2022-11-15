SELECT * FROM platzi.alumnos
LIMIT (SELECT COUNT(*)/2 FROM platzi.alumnos) OFFSET (SELECT COUNT(*)/2 FROM platzi.alumnos);



-- ? otras formas de hacerlo: 

SELECT * 
FROM platzi.alumnos
OFFSET (
	SELECT COUNT(*)/2
	FROM platzi.alumnos
);

-- otra usando row_number()

SELECT ROW_NUMBER() OVER() AS row_id, * -- ROW_NUMBER(): agrega un ID unico a cada fila; OVER(): indica que el row number se haga en todas las particiones de la tabla
FROM platzi.alumnos
OFFSET (
	SELECT COUNT(*)/2
	FROM platzi.alumnos
);