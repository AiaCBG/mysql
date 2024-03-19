/*
Consulta (SELECT) todos (*) los datos de acuerdo a los siguientes criterios:
cuando (WHEN) la edad es mayor a diecisiete (age > 17) indica 'Es mayor de edad'
si no (ELSE) indica 'Es menor de edad'.
Con alias (AS) "agetext" de la tabla "users
Esta consulta inicia con CASE y termina con END luego de definir la función"
*/
SELECT *,
CASE
	WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;

/*
Consulta (SELECT) todos (*) los datos de acuerdo a los siguientes criterios:
cuando (WHEN) la edad es mayor a dieciocho (age > 18) indica 'Es mayor de edad',
cuando (WHEN) la edad es igual a dieciocho (age = 18) indica 'Acaba de cumplir la mayoría de edad',
si no (ELSE) indica 'Es menor de edad'.
Con alias (AS) "agetext" de la tabla "users
*/
SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;

/*
Consulta (SELECT) todos (*) los datos de acuerdo a los siguientes criterios:
cuando (WHEN) la edad es mayor a diecisiete (age > 17) indica "True",
si no (ELSE) indica "False".
Con alias (AS) "¿Es mayor de edad?" de la tabla "users"
*/
SELECT *,
CASE
	WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;