/*Modificar (ALTER) tabla (TABLE) llamada "persons8"
agregar (ADD) columna llamada "surname" de tipo texto de longitud de 150 caracteres (varchar(150))
*/
ALTER TABLE persons8
ADD surname varchar(150);

/*Modificar (ALTER) tabla (TABLE) llamada "persons8"
renombrar (RENAME) columna llamada "surname" a "description"
*/
ALTER TABLE persons8
RENAME COLUMN surname TO description;

/*Modificar (ALTER) tabla (TABLE) llamada "persons8"
modificar (MODIFY) columna llamada "surname" a "description" de tipo texto a longitud de 250 caracteres (varchar(250))
*/
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

/*Modificar (ALTER) tabla (TABLE) llamada "persons8"
eliminar (DROP) columna llamada "description"
*/
ALTER TABLE persons8
DROP COLUMN description;