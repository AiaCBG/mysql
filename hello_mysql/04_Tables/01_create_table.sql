/* Crear (CREATE) una tabla (TABLE) llamada "persons" con las siguientes columnas():
"id" de tipo entero (int)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100))
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha (date)
*/
CREATE TABLE persons (
id int,
name varchar(100),
age int,
email varchar(50),
created date
);

/* Crear (CREATE) una tabla (TABLE) llamada "persons2" con las siguientes columnas():
"id" de tipo entero (int) y no puede ser nulo (NOT NULL)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100)) y no puede ser nulo (NOT NULL)
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha (date)
*/
CREATE TABLE persons2 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created date
);

/* Crear (CREATE) una tabla (TABLE) llamada "persons3" con las siguientes columnas():
"id" de tipo entero (int) y no puede ser nulo (NOT NULL)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100)) y no puede ser nulo (NOT NULL)
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha y hora (datetime)
con campo único el id (UNIQUE (id)) 
*/
CREATE TABLE persons3 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE (id)
);

/* Crear (CREATE) una tabla (TABLE) llamada "persons3" con las siguientes columnas():
"id" de tipo entero (int) y no puede ser nulo (NOT NULL)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100)) y no puede ser nulo (NOT NULL)
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha y hora (datetime)
con campo único el id (UNIQUE (id))
y con clave primaria en id (PRIMARY KEY (id))
*/
CREATE TABLE persons4 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE (id),
PRIMARY KEY (id)
);

/* Crear (CREATE) una tabla (TABLE) llamada "persons3" con las siguientes columnas():
"id" de tipo entero (int) y no puede ser nulo (NOT NULL)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100)) y no puede ser nulo (NOT NULL)
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha y hora (datetime)
con campo único el id (UNIQUE (id))
con clave primaria en id (PRIMARY KEY (id))
y verificar (CHECK) que la edad sea mayor o igual a 18 (age>=18)
*/
CREATE TABLE persons5 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE (id),
PRIMARY KEY (id)
CHECK (age>=18)
);

/* Crear (CREATE) una tabla (TABLE) llamada "persons3" con las siguientes columnas():
"id" de tipo entero (int) y no puede ser nulo (NOT NULL)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100)) y no puede ser nulo (NOT NULL)
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha y hora (datetime) como predeterminado (DEFAULT) la hora del sistema (CURRENT_TIMESTAMP)
con campo único el id (UNIQUE (id))
con clave primaria en id (PRIMARY KEY (id))
y verificar (CHECK) que la edad sea mayor o igual a 18 (age>=18)
*/
CREATE TABLE persons6 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
PRIMARY KEY (id),
CHECK (age>=18)
);

/* Crear (CREATE) una tabla (TABLE) llamada "persons3" con las siguientes columnas():
"id" de tipo entero (int), no puede ser nulo (NOT NULL) y debe ser autoincrementado (AUTO_INCREMENT)
nombre (name) de tipo texto de longitud de 100 caracteres (varchar(100)) y no puede ser nulo (NOT NULL)
edad (age) de tipo entero (int)
correo (email) de tipo texto de longitud de 50 caracteres (varchar(50))
fecha de creación (created) de tipo fecha y hora (datetime) como predeterminado (DEFAULT) la hora del sistema (CURRENT_TIMESTAMP)
con campo único el id (UNIQUE (id))
con clave primaria en id (PRIMARY KEY (id))
y verificar (CHECK) que la edad sea mayor o igual a 18 (age>=18)
*/
CREATE TABLE persons7 (
id int NOT NULL AUTO_INCREMENT,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
PRIMARY KEY (id),
CHECK (age>=18)
);