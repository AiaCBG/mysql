
/*
Crear (CREATE) indice (INDEX) llamado "idx_name" con referencia (ON) al campo "name" de la tabla "users" (users(name))
*/
CREATE INDEX idx_name ON users(name);

/*
Crear (CREATE) indice unico (UNIQUE INDEX) llamado "idx_name" con referencia (ON) al campo "name" de la tabla "users" (users(name))
*/
CREATE UNIQUE INDEX idx_name ON users(name);

/*
Crear (CREATE) indice unico (UNIQUE INDEX) llamado "idx_name_surname" con referencia (ON) a los campos "name" y "surname" de la tabla "users" (users(name, surname))
*/
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

/*
Eliminar (DROP) indice (INDEX) llamado "idx_name_surname" con referencia (ON) a la tabla "users"
*/
DROP INDEX idx_name_surname ON users;