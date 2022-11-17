SELECT * 
FROM platzi.alumnos 
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2018 
AND (EXTRACT(MONTH FROM fecha_incorporacion)) = 05;


-- otra opcion: 

SELECT * 
FROM ( 
	SELECT *, 
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion = 2018
AND mes_incorporacion = 5;