/*
Para crear un procedimiento almacenado se debe delimitar (DELIMINTER // ...codigo... //).
Crear (CREATE) un procedimiento (PROCEDURE) llamado "p_age_users" ()
en donde (IN) el parametro llamado "age_param" sera de tipo entero (int)
comienza (BEGIN)
consultando (SELECT) todos los datos (*) de (FROM) la tabla llamada "users" donde (WHERE) la "age" es igual (=) a el parametro "age_param"
termina (END)
*/
DELIMITER //
CREATE PROCEDURE p_age_users (
	IN age_param int
)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//


/*
Llamar (CALL) el procedimiento llamado "p_all_users"
*/
CALL p_all_users();

/*
Eliminar (DROP) el procedimiento (PROCEDURE) llamado "p_age_users"
*/
DROP PROCEDURE p_age_users;