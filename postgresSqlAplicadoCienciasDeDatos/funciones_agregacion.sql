
-- ? Sacando el precio maximo de renta: 

SELECT MAX(precio_renta)
FROM peliculas;


-- ? Sacando el precio maximo de renta segun el titulo: 

SELECT titulo, MAX(precio_renta)
FROM peliculas
GROUP BY titulo, precio_renta
ORDER BY precio_renta DESC;


-- ? Sacando el precio minimo de renta segun el titulo: 

SELECT titulo, MIN(precio_renta)
FROM peliculas
GROUP BY titulo, precio_renta
ORDER BY precio_renta;


-- ? Precio total de rentar todas las peliculas: 

SELECT SUM(precio_renta)
FROM peliculas;


-- ? Conteo de cada pelicula en las diversas clasificaciones: 

SELECT clasificacion, COUNT(*) AS total_peliculas_clasificacion  -- * El count de las peliculas, se el da el alias para luego poder ordenarlas 
FROM peliculas
GROUP BY clasificacion
ORDER BY total_peliculas_clasificacion DESC;


-- ? Sacando el precio promedio de la renta, con solo 2 decimales 

SELECT ROUND(AVG(precio_renta), 2) 
FROM peliculas


-- ? Sacando el precio promedio segun la clasificacion de cada pelicula

SELECT clasificacion, ROUND(AVG(precio_renta),2) AS precio_promedio
FROM peliculas
GROUP BY clasificacion 
ORDER BY precio_promedio DESC;


-- ? Viendo el tiempo de duracion promedio, segun la clasificiacion

SELECT clasificacion , ROUND(AVG(duracion),2) AS tiempo_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY tiempo_promedio DESC;
