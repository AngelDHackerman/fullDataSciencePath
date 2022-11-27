
-- repaso de las sentencias conocidas. 


SELECT MAX(ultima_actualizacion) AS fecha_ultima_actualizacion, 
		clasificacion,
		COUNT(*) AS cantidad_peliculas
FROM peliculas
WHERE duracion_renta > 3
GROUP BY clasificacion, ultima_actualizacion  -- GROUP BY, creara conjuntos con las peliculas que tengan los mismos valores de clasificacion y ultima_actulizacion
ORDER BY fecha_ultima_actualizacion
