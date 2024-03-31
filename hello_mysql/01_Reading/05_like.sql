-- Consulta (SELECT) todos (*) los datos de la tabla "users" donde (WHERE) "email" sea (LIKE) "sara@mail.com"
SELECT * FROM users WHERE email LIKE 'sara@mail.com';

-- Consulta (SELECT) todos (*) los datos de la tabla "users" donde (WHERE) "email" contenga al final "mail.com" (LIKE '%mail')
SELECT * FROM users WHERE email LIKE '%mail.com';

-- Consulta (SELECT) todos (*) los datos de la tabla "users" donde (WHERE) "email" comiencen con "sara" (LIKE 'sara%')
SELECT * FROM users WHERE email LIKE 'sara%';

-- Consulta (SELECT) todos (*) los datos de la tabla "users" donde (WHERE) "email" contiene "@" (LIKE '%@%')
SELECT * FROM users WHERE email LIKE '%@%';
