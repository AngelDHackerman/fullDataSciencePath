
    -- ! Creando una tabla con un procedure. 

CREATE OR REPLACE PROCEDURE test_dropcreate_procedure() -- ? Asi es como se crean los procedures
LANGUAGE SQL  -- se debe indicar el lenguaje a usar
AS $$  -- ? todo lo que este dentro de los \$\$ sera el en lengujae plpgSql, para el prodecedure
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY); -- crea la tabla con el nombre "aaa" tiene una columna de nombre "bbb" con characteres de longitud 5, y una llave primaria
$$

    -- ? Y de esta manera se invocan los procedures: 

CALL test_dropcreate_procedure();



    -- ! Creando funciones 

CREATE OR REPLACE FUNCTION test_dropcreate_function()
RETURNS VOID -- indica que no debe retornar nada.
LANGUAGE plpgsql  -- se indica el lenguaje de postgres
AS $$ -- aqui se necesitan los simbolos de dolar y las palabras reservadas de inicio y fin
BEGIN
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY, ccc char(5));

	DROP TABLE IF EXISTS aaab;
	CREATE TABLE aaab (bbba char(5) CONSTRAINT secondkey PRIMARY KEY, ccca char(5));
END
$$;


-- ? Y asi es como se invocan las funciones 

SELECT test_dropcreate_function();