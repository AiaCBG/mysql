-- Se emplea para unir la información de 2 tablas

/*
Consulta (SELECT) todos los datos (*) de la tabla "users"
combina con la tabla izquierda (LEFT JOIN) "dni"
estableciendo relación (ON) donde el "user_id" de la tabla "users" (users_user.id) es igual (=) al "user_id" de la tabla "dni" (dni.user_id)
uniendo con (UNION)
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "users"
combina con la tabla derecha (RIGHT JOIN) "dni"
estableciendo relación (ON) donde el "user_id" de la tabla "users" (users_user.id) es igual (=) al "user_id" de la tabla "dni" (dni.user_id)
*/
SELECT *
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

/*
Consulta (SELECT) los "user_id" de la tabla "users" (users.user_id) asigna un alias (AS) "u_user_id", los "user_id" de la tabla "dni" (dni.user_id) de (FROM) la tabla "users" 
combina con la tabla izquierda (LEFT JOIN) "dni"
estableciendo relación (ON) donde el "user_id" de la tabla "users" (users_user.id) es igual (=) al "user_id" de la tabla "dni" (dni.user_id)
uniendo con (UNION)
Consulta (SELECT) los "user_id" de la tabla "users" (users.user_id) asigna un alias (AS) "u_user_id", los "user_id" de la tabla "dni" (dni.user_id) de (FROM) la tabla "users"
combina con la tabla derecha (RIGHT JOIN) "dni"
estableciendo relación (ON) donde el "user_id" de la tabla "users" (users_user.id) es igual (=) al "user_id" de la tabla "dni" (dni.user_id)
*/
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;