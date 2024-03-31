-- Consulta (SELECT) todos (*) los datos desde la tabla "users" que tengan (HAVING) edad (age) mayor a catorce (> 14)
SELECT * FROM users HAVING age > 14;

-- Consulta (SELECT) y cuenta las edades (COUNT(age)) desde la tabla "users" que tengan (HAVING) el contador de edad (HAVING COUNT) edad (age) mayor a tres (> 3), aca se limita a que tiene ser mayor a 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3;