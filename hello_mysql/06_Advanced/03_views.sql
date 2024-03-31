/*
Crear vista (CREATE VIEW) llamada "v_adult_users"
que consulta (SELECT) los campos "name" y "age" 
de (FROM) la tabla "users"
donde (WHERE) "age" es mayor e igual a 18 (age >= 18)
*/
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;


/*
Consultar (SELECT) todos los datos (*) de la vista "v_adult_users"
*/
SELECT * FROM v_adult_users;

/*
Eliminar vista (DROP VIEW) llamada "v_adult_users"
*/
DROP VIEW v_adult_users;