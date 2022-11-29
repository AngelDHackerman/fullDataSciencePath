
-- ? Esta funcion duplica los datos de la tabla seleccionada, es perfecto para tener tablas en sincronia
-- ? Esta se mostrara en una seccion especial llamada "Trigger Functions"

    -- ! Creando la funcion trigger:

CREATE OR REPLACE FUNCTION duplicate_records()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO aaab(bbba, ccca) -- insertar datos en las columnas bbba y ccca de la tabla aaab
	VALUES (NEW.bbb, NEW.ccc); -- "New" es un valor en todas las funciones, cuando algo nuevo sea ingresado en bbb o en ccc de la "aaa", seran tambien introducidos en las columnas antes seleccionadas
	RETURN NEW; -- muestre en el data output lo que fue ingresado.
END
$$;


-- ! Creando el trigger en si: 

