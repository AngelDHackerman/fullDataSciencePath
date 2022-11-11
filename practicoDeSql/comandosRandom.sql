SELECT * FROM platzi.carreras AS carreras


    -- Haciendo inner joins 

SELECT nombre FROM platzi.alumnos AS alumnos 
INNER JOIN platzi.carreras as carreras 
ON alumnos.id = carreras.id;



    -- Usando el where

SELECT * FROM platzi.alumnos
WHERE id <= 10;


SELECT * FROM platzi.alumnos
WHERE id <= 10 
AND carrera_id > 30;


SELECT * FROM platzi.alumnos
WHERE id BETWEEN 10 AND 50;  -- ? BETWEEN, se usa para seleccionar rangos. 

  -- Agrupando los datos con la condicion where

SELECT * FROM platzi.alumnos
WHERE nombre = 'Wanda'
	AND (
		apellido = 'Billington'
		OR
		apellido = NULL 
	);

-- ! Este nos traera a todos los "Wanda Billington" y a todo lo que se apellide "Billington"
SELECT * FROM platzi.alumnos
WHERE nombre = 'Wanda'
	AND	apellido = 'Billington'
	OR apellido = NULL;


-- ? Like puede ser usado con el Where 

--  Es un buen link para entender las opciones que nos da LIKE
-- ? https://www.w3schools.com/sql/sql_like.asp


