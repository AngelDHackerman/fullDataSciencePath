
-- ? SQL con objetos json 

CREATE TABLE ordenes (  -- asi se crean las tablas
	ID serial NOT NULL PRIMARY KEY,  -- es una llave primaria que no puede tener valores nulos
	info json NOT NULL -- Indicamos que sera para formatos json
)


-- ? Insertando valores en la tabla

INSERT INTO ordenes (info) -- * los datos seran introducidos en info y el id se genera automaticamente.
VALUES  -- * abajo se muestran como se introducen los datos.
	(
		'{"cliente": "David Sanchez", "items": {"producto":"Biberon", "cantidad": "24"}}'
	),
	(
		'{"cliente": "Angel Hernandez", "items": {"producto":"Carrito juguete", "cantidad": "1"}}'
	),
	(
		'{"cliente": "Israel vasquez", "items": {"producto":"tren mini", "cantidad": "3"}}'
	);