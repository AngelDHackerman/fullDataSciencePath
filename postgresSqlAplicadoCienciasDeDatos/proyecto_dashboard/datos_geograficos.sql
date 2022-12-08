
-- ? Este script ayuda para hacer graficas de tipo mapa

SELECT ciudades.ciudad_id,
		ciudades.ciudad,
		COUNT (*) AS rentas_por_ciudad  -- * esto va hacer la cuenta, segun como lo agrupemos
FROM ciudades
	INNER JOIN direcciones ON ciudades.ciudad_id = direcciones.ciudad_id  -- * Enlazamos la tabla de 'direcciones' con la de 'ciudades' por medio de 'ciudad_id'
	INNER JOIN tiendas ON tiendas.direccion_id = direcciones.direccion_id  -- * Enlazamos 'tiendas' con 'direcciones' por medio de 'direccion_id'
	INNER JOIN inventarios ON inventarios.tienda_id = tiendas.tienda_id
	INNER JOIN rentas ON inventarios.inventario_id = rentas.inventario_id
GROUP BY ciudades.ciudad_id
ORDER BY rentas_por_ciudad DESC;
	