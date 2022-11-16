
-- Asi tomamos el año que esta dentro de la columna de la tabla: 

SELECT EXTRACT(YEAR FROM fecha_incorporacion) AS year_incorporacion 
FROM platzi.alumnos;

-- Exactamente lo mismo pero diferente forma: 

SELECT DATE_PART('YEAR', fecha_incorporacion) AS year_incorporacion
FROM platzi.alumnos; 



-- año, mes y dias: 

SELECT DATE_PART('YEAR', fecha_incorporacion) AS year_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
		DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion
FROM platzi.alumnos; 



-- Horas, minutos y segundos: 

SELECT DATE_PART('HOUR', fecha_incorporacion) AS hora_incorporacion,
		DATE_PART('MINUTE', fecha_incorporacion) AS minuto_incorporacion,
		DATE_PART('SECOND', fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos; 