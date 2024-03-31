-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" donde (WHERE) el "email" no es (NOT) "sara@mail.com"
SELECT * FROM users WHERE NOT email = 'sara@mail.com';

-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" donde (WHERE) el "email" no es (NOT) "sara@mail.com" y (AND) la edad (age) sea igual a 15 (= 15)
SELECT * FROM users WHERE NOT email = 'sara@mail.com' AND age = 15;

-- Consulta (SELECT) todos (*) los datos de (FROM) la tabla "users" donde (WHERE) el "email" no es (NOT) "sara@mail.com" O (OR) la edad (age) sea igual a 15 (= 15)
SELECT * FROM users WHERE NOT email = 'sara@mail.com' OR age = 15;