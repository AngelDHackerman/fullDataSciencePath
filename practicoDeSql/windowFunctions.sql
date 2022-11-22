
-- ? Mostrando una columna con el numero del "row" y ordenad por la fecha

SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos;


-- ? La columna "row_id" aqui toma el valor de la primer colegiatura que la query encuentra:

SELECT FIRST_VALUE(colegiatura) OVER() AS row_id, *
FROM platzi.alumnos;


-- ? Muestra la "ultima" o la colegiatura mas baja que tiene la "carrera_id" en sus datos

SELECT  LAST_VALUE(colegiatura) 
        OVER(PARTITION BY carrera_id) AS ultima_colegiatura, *
FROM platzi.alumnos;


-- ? Muestra (en este caso) la tercera colegiatura que tiene la "carrera_id" en la tabla

SELECT NTH_VALUE(colegiatura, 3) OVER(PARTITION BY carrera_id) AS tercera_colegiatura, *
FROM platzi.alumnos;