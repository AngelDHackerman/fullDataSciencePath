
-- * este es el paso previo a la creacion del trigger, se crea una funcion que nos devuelva el valor trigger

-- FUNCTION: public.importante()

-- DROP FUNCTION IF EXISTS public.importante();

CREATE OR REPLACE FUNCTION public.importante(
	)
    RETURNS TRIGGER -- aqui se cambia el valor a trigger 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE 
rec record;
contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM pasajero LOOP 
		contador := contador + 1;
	END LOOP;
		INSERT INTO conteo_pasajeros (total, tiempo)
		VALUES (contador, now());
END
$BODY$;

ALTER FUNCTION public.importante()
    OWNER TO postgres;


-- * Asi se crean los triggers 

CREATE TRIGGER mi_trigger 
AFTER INSERT 
ON pasajero 
FOR EACH ROW
EXECUTE PROCEDURE importante();