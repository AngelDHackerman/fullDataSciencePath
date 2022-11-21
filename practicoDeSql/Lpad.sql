
-- ! left padding, el string "sql" debe medir 15 characteres, y los que falten rellenalos con "*"


SELECT lpad ('sql', 15, '*'); 


-- ? Hace el string tan largo como lo es el N. de ID, iterando sobre el id number que encuentra

SELECT lpad('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;

-- Ejemplo:

-- s
-- sq
-- sql
-- *sql
-- **sql


-- ? Creando un triangulo solo de '*' en SQL

SELECT lpad('*', id, '*')
FROM platzi.alumnos
WHERE id < 10;


-- ? Aqui creamos un triangulo de '*' usando como referencia el numero de filas computadas

SELECT lpad ('*', CAST(row_id AS int), '*')  -- CAST(), transforma "row_id" de un string a un integer.
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, * -- ROW_NUMBER() OVER(); selecciona todas las filas, sobre todas las particiones de las tablas
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5;



-- ! Podemos hacer exactamente lo mismo pero en rPad

SELECT rpad('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;

