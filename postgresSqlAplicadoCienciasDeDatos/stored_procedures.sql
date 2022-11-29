
    -- ? Creando una tabla con un procedure. 

CREATE OR REPLACE PROCEDURE test_dropcreate_procedure() -- ? Asi es como se crean los procedures
LANGUAGE SQL  -- se debe indicar el lenguaje a usar
AS $$  -- ? todo lo que este dentro de los \$\$ sera el en lengujae plpgSql, para el prodecedure
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY); -- crea la tabla con el nombre "aaa" tiene un campo de nombre "bbb" con characteres de longitud 5, y una llave primaria
$$

    -- ? Y de esta manera se invocan los procedures: 

CALL test_dropcreate_procedure();