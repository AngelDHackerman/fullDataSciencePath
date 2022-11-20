-- Este script muestra los alumnos que tienen a tutores "tutor_id" 
-- entre el rango especificado

SELECT * 
FROM platzi.alumnos
WHERE int4range (10, 20) @> tutor_id  -- * El rango NO es inclusivo, solo llegara hasta 19
ORDER BY tutor_id DESC;
