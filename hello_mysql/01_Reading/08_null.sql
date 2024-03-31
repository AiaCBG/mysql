-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" donde (WHERE) el "email" es nulo (IS NULL)
SELECT * FROM  users WHERE email IS NULL;

-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" donde (WHERE) el "email" no es nulo (IS NOT NULL)
SELECT * FROM  users WHERE email IS NOT NULL;

-- Consulta (SELECT) los datos de (FROM) la tabla "users" donde (WHERE) el "email" no es nulo (IS NOT NULL) y la edad es igual a 15 (age = 15)
SELECT * FROM  users WHERE email IS NOT NULL AND age = 15;

-- Consulta los nombres (name), apellidos (surname) y si es nula (IFNULL) la edad (age), entonces reemplaza el "Null" por un "0" con alias (AS) "Age" de la tabla "users"
SELECT name, surname, IFNULL(age, 0) AS 'Age' FROM users;