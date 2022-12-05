
-- ? Definiendo una tabla recursiva o iterativa
-- Esta tabla suma 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 ...

WITH RECURSIVE tabla_recursiva(n) AS (
	VALUES(1)
	UNION ALL -- Esto indica que es una union completa, no es como un inner join
	SELECT n+1 FROM tabla_recursiva WHERE n < 100
) SELECT SUM(n) FROM tabla_recursiva  -- aqui llamamos a la tabla recursiva o iterativa



