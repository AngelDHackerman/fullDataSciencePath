
-- ? SQL con objetos json 

CREATE TABLE ordenes (  -- asi se crean las tablas
	ID serial NOT NULL PRIMARY KEY,  -- es una llave primaria que no puede tener valores nulos
	info json NOT NULL -- Indicamos que sera para formatos json
)


-- ? Insertando valores en la tabla

INSERT INTO ordenes (info) -- los datos seran introducidos en info y el id se genera automaticamente.
VALUES  -- abajo se muestran como se introducen los datos.
	(
		'{"cliente": "David Sanchez", "items": {"producto":"Biberon", "cantidad": "24"}}'
	),
	(
		'{"cliente": "Angel Hernandez", "items": {"producto":"Carrito juguete", "cantidad": "1"}}'
	),
	(
		'{"cliente": "Israel vasquez", "items": {"producto":"tren mini", "cantidad": "3"}}'
	);



-- ? Seleccionando la informacion de los json. 
-- todo: Aqui nos devuelve la info en forma de "string"

SELECT 
	info -> 'cliente' AS cliente  -- info es el nombre de la tabla, 'cliente' el nombre de la clave que buscamos
FROM ordenes;


-- todo: Aqui nos la devuelve como un texto plano

SELECT 
	info ->> 'cliente' AS cliente  -- * lo que cambia es el ->>
FROM ordenes;



-- ? Muestra el nombre del cliente que compro un biberon

SELECT 
	info ->> 'cliente' AS cliente
FROM ordenes
WHERE info -> 'items' ->> 'producto' = 'Biberon';

