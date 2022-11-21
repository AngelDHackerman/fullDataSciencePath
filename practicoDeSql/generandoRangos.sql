
-- ? Crea un listado de numeros segun los del parametro

SELECT * 
FROM generate_series(1, 4);


-- ? Genera un listado negativo, con un "delta" o un paso de -2

SELECT * 
FROM generate_series(5, 1, -2);


SELECT * 
FROM generate_series(4, 3, -1);


-- ? Arreglo o listado con decimales

SELECT * 
FROM generate_series(1.1, 4, 1.3);  -- del 1.1 al 4, pero con pasos de 1.3 cada iteracion



-- ? Sumar a la fecha actual, usando generate_series (en este caso se suman 7 dias a la fecha actual) 

SELECT current_date + s.a AS dates
FROM generate_series(0, 14, 7) AS s(a); -- s(a), s: es el nombre de la tabla generada dinamicamente por "generate_series", y a: es el unico campo que tiene (en este caso los numeros que van de 7 en 7)


-- ? Aumentando la fecha predefinida pero a paso de 10 horas

SELECT * 
FROM generate_series(
          '2022-11-01 00:00:00'::timestamp, -- ::timestamp, asi se castea el dato tipo string a timestamp
					'2022-11-25 14:00:00', '10 hours'
);



-- ? INNER JOIN con los generate_series

SELECT  a.id,
		a.nombre,
		a.apellido,
		a.carrera_id,
		s.a
FROM platzi.alumnos AS a
	INNER JOIN generate_series(0, 10) AS s(a)  -- Esto genera una tabla dinamica del 0 al 10 llamada "s" y su unico elemento es "a"
	ON s.a = a.carrera_id
ORDER BY a.carrera_id;