-- Relación 1:1 (uno a uno)
/* Crear (CREATE) una tabla (TABLE) llamada "dni" con las siguientes columnas():
"dni_id" de tipo entero (int) debe ser autoincrementado (AUTO_INCREMENT) y clave primaria (PRIMARY KEY) 
"dni_number" de tipo entero (int) y no puede ser nulo (NOT NULL)
"user_id" de tipo entero (int)
dato unico (UNIQUE) "dni_id"
con llave foranea (FOREIGN KEY) "user_id" con referencia al campo "user_id" de la tabla "users" REFERENCES users(user_id)

*/
CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE (dni_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);



CREATE TABLE companies (
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);



-- Relación 1:N (uno a muchos)
/*
Como la tabla ya está creada, modificamos (ALTER) la tabla (TABLE) "users"
Creamos la restriccion (CONSTRAINT) y la llamaremos "fk_companies"
en la tabla de "users"
el company_id va a estar haciendo referencia al "company_id" de la tabla "companies"
*/
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id);



-- Relación N:M (muchos a muchos)
/*
Crearemos (CREATE) la tabla (TABLE) y la llamaremos "user_languages" con lo siguientes campos ()
"user_language_id" del tipo entero (int) debe ser autoincrementado (AUTO_INCREMENT) y clave primaria (PRIMARY KEY)
"user_id" del tipo entero (int)
language_id del tipo entero (int)
llave foranea (FOREIGN KEY) "user_id" con referencia al campo "user_id" de la tabla "users" REFERENCES users(user_id)
llave foranea (FOREIGN KEY) "language_id" con referencia al campo "language_id" de la tabla "languages" REFERENCES languages(language_id)
dupla unica (UNIQUE) "user_id" y "language_id"
*/
CREATE TABLE users_languages (
	user_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);