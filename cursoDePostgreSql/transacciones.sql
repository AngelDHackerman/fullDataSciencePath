-- ! Las transacciones son similares a un try/catch


BEGIN; -- indica que estamos probando este codigo
INSERT INTO public.estacion(
	nombre, direccion)
	VALUES ('Estacion transac', 'direccion aleatoria N.1')
	
INSERT INTO public.tren(
	modelo, capacidad)
	VALUES ('Modelo transaccion', 100)
	
-- ? ROLLBACK, si lo escribimos DESPUES de ejecutada la funcion, elminara todos los cambios hechos
-- ? COMMIT, agregara todos los cambios a la base de datos 
-- ? Si no dejamos nada escrito los cambios no se efectuan en la base de datos (como un staging).



-- ! Cuando hay conflictos en una de las transacciones, ninguna de guarda y se hace rollback de manera automatica.


