-- Consulta (SELECT) la edad máxima (MAX(age)) de la tabla "users" agrupado por (GROUP BY) edad (age)
SELECT MAX(age) FROM users GROUP BY age;

-- Consulta (SELECT) y cuenta las edades (COUNT(age)) de la tabla "users" agrupado por (GROUP BY) edad (age)
SELECT COUNT(age) FROM users GROUP BY age;

-- Consulta (SELECT) y cuenta las edades (COUNT(age)) y muestra edades (age) de la tabla "users" agrupado por (GROUP BY) edad (age)
SELECT COUNT(age), age FROM users GROUP BY age;

-- Consulta (SELECT) y cuenta las edades (COUNT(age)) y muestra edades (age) de la tabla "users" agrupado por (GROUP BY) edad (age) y ordenar (ORDER BY) por edad (age) de manera ascendente (ASC)
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;

-- Consulta (SELECT) y cuenta las edades (COUNT(age)) y muestra edades (age) de la tabla "users" donde (WHERE) la edad es mayor a quince (age > 15) agrupado por (GROUP BY) edad (age) y ordenar (ORDER BY) por edad (age) de manera ascendente (ASC)
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC;