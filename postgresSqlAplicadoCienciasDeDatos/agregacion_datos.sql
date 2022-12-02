
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

SELECT clasificacion, COUNT(*) AS total_peliculas_clasificacion
FROM peliculas
GROUP BY clasificacion
ORDER BY total_peliculas_clasificacion DESC;