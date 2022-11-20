

-- ? left padding, el string "sql" debe medir 15 characteres, y los que falten rellenalos con "*"

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


-- ? Creando un triangulo en SQL

SELECT lpad('*', id, '*')
FROM platzi.alumnos
WHERE id < 10;