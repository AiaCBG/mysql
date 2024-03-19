-- Cosulta (SELECT) todos (*) los datos de la tabla "users" donde (WHERE) el nombre (name) es (IN) "Brais" ('Brais')
SELECT * FROM users WHERE name IN ('Brais');

-- Cosulta (SELECT) todos (*) los datos de la tabla "users" donde (WHERE) el nombre (name) es (IN) "Brais" y "Sara" ('Brais', 'sara')
SELECT * FROM users WHERE name IN('Brais', 'sara');