-- Retorna todas las filas de la segunda tabla y las coincidencias de la primera tabla

/*
Consulta (SELECT) todos los datos (*) de (FROM) la tabla "users"
combina con la tabla derecha (RIGHT JOIN) "dni"
estableciendo relación (ON) donde el "user_id" de la tabla "users" (users_user.id) es igual (=) al "user_id" de la tabla "dni" (dni.user_id)
*/
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

/*
Consulta (SELECT) los "name" y "dni_number" de (FROM) la tabla "users"
combina con la tabla derecha (RIGHT JOIN) "dni"
estableciendo relación (ON) donde el "user_id" de la tabla "users" (users_user.id) es igual (=) al "user_id" de la tabla "dni" (dni.user_id)
*/
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;