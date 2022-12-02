
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