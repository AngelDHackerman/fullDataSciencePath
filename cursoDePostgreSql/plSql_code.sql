-- ? PL o bloques de codigo

DO $$  -- se abre con 'DO' y con $$ tambien se cierra con $$
BEGIN
	RAISE NOTICE 'ALGO ESTA PASANDO';
END
$$


DO $$
DECLARE 
rec record; -- rec, es la variable; record, es el tipo de variable
BEGIN
	FOR rec IN SELECT * FROM pasajero LOOP -- por cada columna de pasajero se crea un loop y se asigna a 'rec'
	RAISE NOTICE 'Un pasajero se llama %', rec.nombre; -- el %, es un comodin para podre agregar las propiedades de la variable rec.nombre
	END LOOP; -- con eso le decimos que se termina el loop 
END
$$


DO $$
DECLARE 
rec record;
contador integer := 0; -- contador: es la variable; integer: el tipo de variable; := asi es como se asignan los valores
BEGIN
	FOR rec IN SELECT * FROM pasajero LOOP 
	RAISE NOTICE 'Un pasajero se llama %', rec.nombre;
	contador := contador + 1;  -- esto hace crecer el contador
	END LOOP;
	RAISE NOTICE 'Conteo es %', contador; -- el valor de 'contador' se introducira en el '%'
END
$$

    -- ? convirtiendo la PL en una funcion: 

CREATE FUNCTION importantePL() -- asi se declara e inicia la nueva funcion
RETURNS void -- se declara que tipo de valor retorna, en este caso retorna 'nada', (void) 
AS $$ -- as, hace referencia al codigo de abajo
DECLARE 
rec record;
contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM pasajero LOOP 
	RAISE NOTICE 'Un pasajero se llama %', rec.nombre;
	contador := contador + 1;
	END LOOP;
	RAISE NOTICE 'Conteo es %', contador;
END
$$
LANGUAGE PLPGSQL; -- se DEBE indicar que tipo de lenguaje se esta ejecutando. 


-- * asi invocamos a la funcion: 

SELECT importantePL(); 

-- En este caso 'Data output' mostrara nada, pero en mesajes se encontraran los mesajes que nos debio lanzar la funcion.