SELECT * FROM platzi.carreras AS carreras



-- Haciendo inner joins 

SELECT nombre FROM platzi.alumnos AS alumnos 
INNER JOIN platzi.carreras as carreras 
ON alumnos.id = carreras.id;