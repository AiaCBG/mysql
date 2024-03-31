-- Los Triggers son activadores, acciones que se deben ejecutar en determinados momentos. Se le indican, qué, cómo y cuándo

/*
Para respaldar los cambios de email en usuarios:
Crearemos una tabla (CREATE TABLE) llamada "email_history" con los siguientes cambios()
"email_history" del tipo entero (int), será dato unico (UNIQUE), no puede ser nulo (NOT NULL), autoincrementado (AUTO INCREMENT) y será clave primaria (PRIMARY KEY)
"user_id" del tipo entero (int) no debe ser nulo (NOT NULL)
"email" del tipo texto y de longitud de 100 caracteres (varchar(100))
*/
CREATE TABLE email_history (
email_history int UNIQUE KEY NOT NULL AUTO_INCREMENT PRIMARY KEY ,
user_id int NOT NULL,
email varchar(100)
);


/*
Para crear los triggers debemos delimitar todo el código (delimiter | ... | delimiter)
Abrimos la delimitación (delimiter |)
Crear trigger (CREATE TRIGGER) lo llamaremos "tg_email"
despues (AFTER) de actualizar (UPDATE) en (ON) la tabla "users"
para cada fila (FOR EACH ROW)
iniciando (BEGIN), acá definimosn el bloque de la función:
definifmos la condición si (IF) el antiguo (estado del campo) emai (OLD.emil) es diferente (<>) al nuevo (estado del campo) email (NEW.email) entonces (THEN)
insertar (INSERT INTO) la tabla "email_history" en los campos "user_id" y el "email"
los valores (VALUES) antiguo "user_id" (OLD.user_id) y el antiguo "email" (OLD.email)
terminar la condición si (END IF;)
terminar el bloque de la función (END;)
Cerramos la delimitación (| delimiter;)
*/
delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;

|

delimiter ;


/*
Eliminar trigger (DROP TRIGGER) llamado "tg_email"
*/
DROP TRIGGER tg_email;