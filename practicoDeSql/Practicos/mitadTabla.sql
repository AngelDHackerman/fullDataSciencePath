SELECT * FROM platzi.alumnos
LIMIT (SELECT COUNT(*)/2 FROM platzi.alumnos);