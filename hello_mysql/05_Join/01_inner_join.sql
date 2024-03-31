-- Retorna las filas de 2 o más tablas cuando hay coincidencias en ambas tablas

-- 1:1

/*
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "users" y 
combinalos con (INNER JOIN) con la tabla "dni"
*/
SELECT * FROM users
INNER JOIN dni;

/*
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "users" y 
combinalos con (JOIN) con la tabla "dni"
estableciendo relacion (ON) donde el "users.user_id" (tabla users, columna user_id) se relacione con (=) "dni.user_id" (tabla dni, columna user_id)
*/
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

/*
Consulta (SELECT) los "name" y "dni_number" de (FROM) la tabla "users" y 
combinalos con (JOIN) con la tabla "dni"
estableciendo relacion (ON) donde el "users.user_id" (tabla users, columna user_id) se relacione con (=) "dni.user_id" (tabla dni, columna user_id) y
ordenarlos por (ORDER BY) "age"
*/
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age;

-- 1:N

/*
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "users" y 
combinalos con (JOIN) con la tabla "companies"
estableciendo relacion (ON) donde el "users.company_id" (tabla users, columna company_id) se relacione con (=) "companies.company_id" (tabla companies, columna company_id)
*/
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

/*
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "companies" y 
combinalos con (JOIN) con la tabla "users"
estableciendo relacion (ON) donde el "users.company_id" (tabla users, columna company_id) se relacione con (=) "companies.company_id" (tabla companies, columna company_id)
*/
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

/*
Consulta (SELECT) los "name" de (FROM) la tabla "companies" y los "names" de la tabla "users" de la tabla "companies" y 
combinalos con (JOIN) con la tabla "users"
estableciendo relacion (ON) donde el "users.company_id" (tabla users, columna company_id) se relacione con (=) "companies.company_id" (tabla companies, columna company_id)
*/
SELECT companies.name, users.name FROM companies
JOIN users
ON users.company_id = companies.company_id;

-- N:M
/*
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "users_languages"
combinalos con (JOIN) con la tabla "users"
estableciendo relacion (ON) donde el "users_languages.user_id" (tabla users_languages, columna user_id) se relacione con (=) "users.user_id" (tabla users, columna user_id) y
combinalos con (JOIN) con la tabla "languages"
estableciendo relacion (ON) donde el "users_languages.user_id" (tabla users_languages, columna user_id) se relacione con (=) "languages.language_id" (tabla languages, columna language_id)
*/
SELECT * 
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.user_id = languages.language_id;

/*
Consulta (SELECT) los "name" de la tabla "users (users.name) y los "name" de la table "languages" (languages.name) de (FROM) la tabla "users_languages"
combinalos con (JOIN) con la tabla "users"
estableciendo relacion (ON) donde el "users_languages.user_id" (tabla users_languages, columna user_id) se relacione con (=) "users.user_id" (tabla users, columna user_id) y
combinalos con (JOIN) con la tabla "languages"
estableciendo relacion (ON) donde el "users_languages.language_id" (tabla users_languages, columna language_id) se relacione con (=) "languages.language_id" (tabla languages, columna language_id)
*/
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;