-- Consulta (SELECT) los datos de nombres (name) y fecha de inicio (init_date) que llamaremos como (AS) "Fecha de inicio en programación" de la tabla "users" donde (DONDE) la edad (AGE) sea entre (BETWEEN) "20" y (AND) "30"
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 20 AND 30;


-- Consulta (SELECT) y concatena (CONCAT) el nombre y apellido (name, ' ', surname) y lo llamaremos como (AS) 'Nombre Completo' de (FROM) la tabla "users"
SELECT CONCAT(name, ' ', surname) AS 'Nombre Completo' FROM users;