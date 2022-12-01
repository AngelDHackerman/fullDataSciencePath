
-- ? Asi se crean los tipos de datos

CREATE TYPE humor AS ENUM ('triste', 'normal', 'feliz'); -- ! ENUM es como un array, pero este solo define la lista de posibilidades que podemos elegir


-- ? creando una tabla con el nuevo tipo de dato

CREATE TABLE persona_prueba(
	nombre text,  -- * tipo de dato es "text"
	humor_actual humor  -- * tipo de dato es "humor"
)


-- todo: Este query no funciona porque en el valor enum, 'molesto' no esta incluido.

INSERT INTO persona_prueba VALUES ('pablo', 'molesto');

-- todo: Este si funciona porque el valor en ENUM si esta incluido:

INSERT INTO persona_prueba VALUES ('pablo', 'feliz');