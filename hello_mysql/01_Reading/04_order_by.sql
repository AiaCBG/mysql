-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" ordenados por (ORDER BY) edad (age), por defecto el orden es ascendente
SELECT * FROM users ORDER BY age;

-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" ordenados por (ORDER BY) edad (age), en orden  ascendente (ASC)
SELECT * FROM users ORDER BY age ASC;

-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" ordenados por (ORDER BY) edad (age), en orden descendente (DESC)
SELECT * FROM users ORDER BY age DESC;

-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" donde (WHERE) el "email" es igual a sara@mail.com (= 'sara@mail.com') ordenados por (ORDER BY) edad (age) de manera ascendente (ASC)
SELECT * FROM users WHERE email='sara@mail.com' ORDER BY age ASC;

-- Consulta (SELECT) los nombres (name) de (FROM) la tabla "users" donde (WHERE) el "email" es igual a sara@mail.com (= 'sara@mail.com') ordenados por (ORDER BY) edad (age) de manera ascendente (ASC)
SELECT name FROM users WHERE email='sara@mail.com' ORDER BY age ASC;