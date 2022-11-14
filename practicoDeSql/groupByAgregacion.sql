
SELECT * FROM tabla_diaria
GROUP BY marca; 


SELECT * FROM tabla_diaria
GROUP BY marca, modelo; 



-- ? Limit, pone un limite de resultados a mostrar. 

SELECT * FROM tabla_diaria
LIMIT 1500; 


SELECT * FROM tabla_diaria
OFFSET 1500  -- ? OFFSET, sirve para "saltarse" los primeros 1500 resultados, y luego traer los otros 1500
LIMIT 1500; 

