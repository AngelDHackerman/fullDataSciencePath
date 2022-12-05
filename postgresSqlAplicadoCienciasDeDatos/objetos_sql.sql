
-- ? SQL con objetos json 

CREATE TABLE (  -- asi se crean las tablas
	ID serial NOT NULL PRIMARY KEY,  -- es una llave primaria que no puede tener valores nulos
	info json NOT NULL -- Indicamos que sera para formatos json
)