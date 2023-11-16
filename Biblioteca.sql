CREATE DATABASE BIBLIOTECA
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

use BIBLIOTECA;

CREATE TABLE AREA(
    ID_AREA INT PRIMARY KEY,
    DESCRIPCION VARCHAR(50)
);

CREATE TABLE TIPOMATERIAL(
    ID_TIPO INT PRIMARY KEY,
    DESCRIPCION VARCHAR(50)
);

CREATE TABLE USUARIO(
    TIPODCTO VARCHAR(2),
    DOCUMENTO VARCHAR(20),
    NOMBRE VARCHAR(50),
    APELLIDO VARCHAR(50),
    FECHANACIMIENTO DATE,
    ESCOLARIDAD VARCHAR(20),
    TELEFONO VARCHAR(20),
    DIRECCION VARCHAR(20), 
    CIUDAD VARCHAR (20),
    OCUPACION VARCHAR(20),
    EMAIL VARCHAR(50),
    CONTRASENA VARCHAR(10),
    PRIMARY KEY (TIPODCTO,DOCUMENTO)
);

CREATE TABLE AUTOR(
    ID_AUTOR INT PRIMARY KEY,
    NOMBRE VARCHAR(50),
    APELLIDO VARCHAR(50),
    CIUDAD VARCHAR(20)
);


CREATE TABLE EDITORIAL(
    ID_EDITORIAL INT PRIMARY KEY,
    NOMBRE VARCHAR(50)
);

CREATE TABLE LIBRO(
    ID_LIBRO INT PRIMARY KEY,
    NOMBRE VARCHAR(200),
    DESCRIPCION VARCHAR(500),
    FECHAPUBLICACION DATE,
    AREA_ID INT,
    CONSTRAINT fk_area FOREIGN KEY (AREA_ID) REFERENCES AREA(ID_AREA),
    EDITORIAL_ID INT,
    CONSTRAINT fk_editorial FOREIGN KEY (EDITORIAL_ID) REFERENCES EDITORIAL(ID_EDITORIAL),
    TIPO_ID INT,
    CONSTRAINT fk_tipo FOREIGN KEY (TIPO_ID) REFERENCES TIPOMATERIAL(ID_TIPO)
);

CREATE TABLE AUTORMATERIAL(
    ID_AUTORMATERIAL INT PRIMARY KEY,
    AUTOR_ID INT,
    CONSTRAINT fk_autor FOREIGN KEY (AUTOR_ID) REFERENCES AUTOR(ID_AUTOR),
    LIBRO_ID INT,
    CONSTRAINT fk_libro FOREIGN KEY (LIBRO_ID) REFERENCES LIBRO(ID_LIBRO)
);

CREATE TABLE PRESTAMO(
    ID_PRESTAMO INT PRIMARY KEY,
    TIPODCTO VARCHAR(2),
    DOCUMENTO VARCHAR(20),
    CONSTRAINT fk_ FOREIGN KEY (TIPODCTO,DOCUMENTO) REFERENCES USUARIO(TIPODCTO,DOCUMENTO),
    ID_LIBRO INT,
    FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO(ID_LIBRO),
    FECHAPRESTAMO DATE,
    ESTADO SMALLINT
);

INSERT INTO AREA VALUES (1,'Ciencias Exactas');
INSERT INTO AREA VALUES (2,'Ciencias Naturales');
INSERT INTO AREA VALUES (3,'Ciencias Sociales');
INSERT INTO AREA VALUES (4,'Ingeniería');
INSERT INTO AREA VALUES (5,'Lenguaje');
INSERT INTO AREA VALUES (6,'Literatura');
INSERT INTO AREA VALUES (7,'Matemáticas');
INSERT INTO AREA VALUES (8,'Medicina');
INSERT INTO AREA VALUES (9,'Arte');
INSERT INTO AREA VALUES (10,'Historia');
INSERT INTO AREA VALUES (11,'Geografía');
INSERT INTO AREA VALUES (12,'Geografía');
INSERT INTO AREA VALUES (13,'Religión');
INSERT INTO AREA VALUES (14,'Deportes');
INSERT INTO AREA VALUES (15,'Tecnología');
INSERT INTO AREA VALUES (16,'Informática');
INSERT INTO AREA VALUES (17,'Economía');
INSERT INTO AREA VALUES (18,'Política');
INSERT INTO AREA VALUES (19,'Derusuario');
INSERT INTO AREA VALUES (20,'Ciencias ');

INSERT INTO TIPOMATERIAL VALUES (1,'Libro');
INSERT INTO TIPOMATERIAL VALUES (2,'Revista');
INSERT INTO TIPOMATERIAL VALUES (3,'Tesis');
INSERT INTO TIPOMATERIAL VALUES (4,'Periódico');
INSERT INTO TIPOMATERIAL VALUES (5,'Enciclopedia');
INSERT INTO TIPOMATERIAL VALUES (6,'Diccionario');
INSERT INTO TIPOMATERIAL VALUES (7,'Atlas');
INSERT INTO TIPOMATERIAL VALUES (8,'Mapa');
INSERT INTO TIPOMATERIAL VALUES (9,'Folleto');
INSERT INTO TIPOMATERIAL VALUES (10,'Cartel');
INSERT INTO TIPOMATERIAL VALUES (11,'Fotografía');
INSERT INTO TIPOMATERIAL VALUES (12,'Disco');
INSERT INTO TIPOMATERIAL VALUES (13,'Casete');
INSERT INTO TIPOMATERIAL VALUES (14,'CD');
INSERT INTO TIPOMATERIAL VALUES (15,'DVD');
INSERT INTO TIPOMATERIAL VALUES (16,'Video');
INSERT INTO TIPOMATERIAL VALUES (17,'Microfilm');
INSERT INTO TIPOMATERIAL VALUES (18,'Microficha');
INSERT INTO TIPOMATERIAL VALUES (19,'Disquete');
INSERT INTO TIPOMATERIAL VALUES (20,'Disco Compacto');

INSERT INTO USUARIO VALUES ('CC','1234589','carlos','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','juanp@gmail.com','123456');
INSERT INTO USUARIO VALUES ('CC','987654321','Mario','Mejia','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','mariag@gmail.com','132456');
INSERT INTO USUARIO VALUES ('CC','12365789','Pepe','Porras','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','pedrop@gmmail.com','142356');
INSERT INTO USUARIO VALUES ('CC','987654388','Luis','Gomez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','luisg@gmail.com','152346');
INSERT INTO USUARIO VALUES ('CC','563456789','Karla','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','carlosp@gmail.com','162345');
INSERT INTO USUARIO VALUES ('CC','987653245','Luis','Rincon','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','andresg@gmail.com','124356');
INSERT INTO usuario VALUES ('CC','893456789','Rafael','Remolina','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','jorgep@gmail.com','125346');
INSERT INTO USUARIO VALUES ('CC','9876543432','Camilo','Garnica','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','camilog@gmail.com','126345');
INSERT INTO USUARIO VALUES ('CC','234456789','Santiago','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','santiagop@gmail.com','134256');
INSERT INTO USUARIO VALUES ('CC','98766789','Daniel','Gomez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','danielg@gmail.com','135246');
INSERT INTO USUARIO VALUES ('CC','890456789','Felipe','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','felipep@gmail.com','136245');
INSERT INTO USUARIO VALUES ('CC','987656743','Mateo','Gomez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','mateog@gmail.com','143256');
INSERT INTO USUARIO VALUES ('CC','987656789','David','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','davidp@gmail.com','145236');
INSERT INTO USUARIO VALUES ('CC','9876122','Brayan','Caballero','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','javierg@gmial.com','146235');
INSERT INTO USUARIO VALUES ('CC','908756789','Ricardo','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','ricardop@gmail.com','153246');
INSERT INTO USUARIO VALUES ('CC','90984321','Oscar','Porras','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','oscarg@gmail.com','154236');
INSERT INTO USUARIO VALUES ('CC','120987789','Julian','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','julianp@gmail.com','156234');
INSERT INTO USUARIO VALUES ('CC','98876789','Miguel','Gomez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','miguelg@gmail.com','163245');
INSERT INTO USUARIO VALUES ('CC','127896789','Sebastian','Perez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','sebastianp@gmail.com','164235');
INSERT INTO USUARIO VALUES ('CC','9876544321','Alejandro','Gomez','1990-01-01','Universitario','1234567','Calle 1','Bucaramanga','Estudiante','alejandrog@gmial.com','165234');

INSERT INTO AUTOR VALUES (1,'Gabriel','Garcia','Aracataca');
INSERT INTO AUTOR VALUES (2,'William','Shakespeare','Stratford-upon-Avon');
INSERT INTO AUTOR VALUES (3,'Miguel','Cervantes','Alcalá de Henares');
INSERT INTO AUTOR VALUES (4,'Homero','Homero','Esmirna');
INSERT INTO AUTOR VALUES (5,'Fiodor','Dostoyevski','Moscú');
INSERT INTO AUTOR VALUES (6,'León','Tolstói','Yásnaia Poliana');
INSERT INTO AUTOR VALUES (7,'Vladimir','Nabokov','San Petersburgo');
INSERT INTO AUTOR VALUES (8,'Jorge Luis','Borges','Buenos Aires');
INSERT INTO AUTOR VALUES (9,'James','Joyce','Dublín');
INSERT INTO AUTOR VALUES (10,'Franz','Kafka','Praga');
INSERT INTO AUTOR VALUES (11,'Charles','Dickens','Portsmouth');
INSERT INTO AUTOR VALUES (12,'Friedrich','Nietzsche','Röcken');
INSERT INTO AUTOR VALUES (13,'Antón','Chéjov','Taeditorial');
INSERT INTO AUTOR VALUES (14,'William','Faulkner','New Albany');
INSERT INTO AUTOR VALUES (15,'Herman','Melville','Nueva York');
INSERT INTO AUTOR VALUES (16,'Gustave','Flaubert','Ruan');
INSERT INTO AUTOR VALUES (17,'Honoré','de Balzac','Tours');
INSERT INTO AUTOR VALUES (18,'Virginia','Woolf','Londres');
INSERT INTO AUTOR VALUES (19,'Fiódor','Dostoievski','Moscú');
INSERT INTO AUTOR VALUES (20,'Jorge','Luis Borges','Buenos Aires');

INSERT INTO EDITORIAL VALUES (1,'Alfaguara');
INSERT INTO EDITORIAL VALUES (2,'material_bibliografico');
INSERT INTO EDITORIAL VALUES (3,'Anaya');
INSERT INTO EDITORIAL VALUES (4,'Ariel');
INSERT INTO EDITORIAL VALUES (5,'Bruguera');
INSERT INTO EDITORIAL VALUES (6,'Cátedra');
INSERT INTO EDITORIAL VALUES (7,'Crítica');
INSERT INTO EDITORIAL VALUES (8,'Debolsillo');
INSERT INTO EDITORIAL VALUES (9,'Destino');
INSERT INTO EDITORIAL VALUES (10,'Edhasa');
INSERT INTO EDITORIAL VALUES (11,'Espasa');
INSERT INTO EDITORIAL VALUES (12,'Grijalbo');
INSERT INTO EDITORIAL VALUES (13,'Lumen');
INSERT INTO EDITORIAL VALUES (14,'Mondadori');
INSERT INTO EDITORIAL VALUES (15,'Planeta');
INSERT INTO EDITORIAL VALUES (16,'Plaza & Janés');
INSERT INTO EDITORIAL VALUES (17,'RBA');
INSERT INTO EDITORIAL VALUES (18,'Seix Barral');
INSERT INTO EDITORIAL VALUES (19,'Siruela');
INSERT INTO EDITORIAL VALUES (20,'Tusquets');

INSERT INTO LIBRO VALUES (1,'Cien años de soledad','Cien años de soledad es una novela del escritor colombiano Gabriel García Márquez, ganador del Premio Nobel de Literatura en 1982. Es considerada una obra maestra de la literatura hispanoamericana y universal, así como una de las obras más traducidas y leídas en español.','1967-05-30',1,1,1);
INSERT INTO LIBRO VALUES (2,'El amor en los tiempos del cólera','El amor en los tiempos del cólera es una novela del escritor colombiano Gabriel García Márquez, publicada en 1985. Narra la vida de tres personajes entre finales del siglo XIX y principios del siglo XX en la ciudad ficticia de Río Hacha, en Colombia.','1985-01-01',2,2,2);
INSERT INTO LIBRO VALUES (3,'El coronel no tiene quien le escriba','El coronel no tiene quien le escriba es una novela del escritor colombiano Gabriel García Márquez, publicada en 1961.','1961-01-01',3,3,3);
INSERT INTO LIBRO VALUES (4,'El otoño del patriarca','El otoño del patriarca es una novela del escritor colombiano Gabriel García Márquez, publicada en 1975. La novela narra la vida de un dictador no identificado de un país no identificado de América Latina, desde su infancia hasta su muerte.','1985-01-01',4,4,4);
INSERT INTO LIBRO VALUES (5,'El general en su laberinto','El general en su laberinto es una novela del escritor colombiano Gabriel García Márquez, publicada en 1989. La novela narra los últimos días del libertador Simón Bolívar, quien tras ser derrotado en la batalla de Boyacá, se ve obligado a exiliarse en Santa Marta, donde muere en 1830.','1975-01-01',5,5,5);
INSERT INTO LIBRO VALUES (6,'La hojarasca','La hojarasca es una novela del escritor colombiano Gabriel García Márquez, publicada en 1955. Es la primera novela del autor, y es considerada una de las obras fundacionales del llamado boom latinoamericano.','1989-01-01',6,6,6);
INSERT INTO LIBRO VALUES (7,'La mala hora','La mala hora es una novela del escritor colombiano Gabriel García Márquez, publicada en 1962. La novela narra la historia de un pueblo ficticio llamado Macondo, que se ve amenazado por la llegada de un grupo de guerrilleros.','1955-01-01',7,7,7);
INSERT INTO LIBRO VALUES (8,'La increíble y triste historia de la cándida Eréndira ','La increíble y triste historia de la cándida Eréndira y de su abuela desalmada es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de una joven llamada Eréndira, quien es obligada por  su abuela a prostituirse para pagar una deuda.','1962-01-01',8,8,8);
INSERT INTO LIBRO VALUES (9,'La siesta del martes','La siesta del martes es una novela del escritor colombiano Gabriel García Márquez, publicada en 1962. La novela narra la historia de una madre y su hija, quienes viajan a un pueblo para visitar la tumba de su hijo, quien fue asesinado por la policía.','1962-01-01',9,9,9);
INSERT INTO LIBRO VALUES (10,'La mujer que llegaba a las seis','La mujer que llegaba a las seis es una novela del escritor colombiano Gabriel García Márquez, publicada en 1962. La novela narra la historia de una mujer que llega a un pueblo para visitar a su amante, quien es un hombre casado.','1962-01-01',10,10,10);
INSERT INTO LIBRO VALUES (11,'La prodigiosa tarde de Baltazar','La prodigiosa tarde de Baltazar es una novela del escritor colombiano Gabriel García Márquez, publicada en 1962. La novela narra la historia de un carpintero que construye una jaula para un pájaro.','1962-01-01',11,11,11);
INSERT INTO LIBRO VALUES (12,'La luz es como el agua','La luz es como el agua es una novela del escritor colombiano Gabriel García Márquez, publicada en 1962. La novela narra la historia de dos niños que piden un bote para su cumpleaños, y al no recibirlo, deciden convertir su casa en un barco.','1962-01-01',12,12,12);
INSERT INTO LIBRO VALUES (13,'El ahogado más hermoso del mundo','El ahogado más hermoso del mundo es una novela del escritor colombiano Gabriel García Márquez, publicada en 1968. La novela narra la historia de un pueblo que encuentra el cadáver de un hombre, y decide enterrarlo.','1962-01-01',13,13,13);
INSERT INTO LIBRO VALUES (14,'Un día de estos','Un día de estos es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de un dentista que se niega a atender al alcalde de un pueblo, debido a que este no le ha pagado.','1968-01-01',14,14,14);
INSERT INTO LIBRO VALUES (15,'El rastro de tu sangre en la nieve','El rastro de tu sangre en la nieve es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de un hombre que se enamora de una mujer, y decide matar a su marido para poder estar con ella.','1968-01-01',15,15,15);
INSERT INTO LIBRO VALUES (16,'El verano feliz de la señora Forbes','El verano feliz de la señora Forbes es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de una mujer que se enamora de un hombre, y decide matar a su marido para poder estar con él.','1968-01-01',16,16,16);
INSERT INTO LIBRO VALUES (17,'El último viaje del buque fantasma','El último viaje del buque fantasma es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de un hombre que se enamora de una mujer, y decide matar a su marido para poder estar con ella.','1972-01-01',17,17,17);
INSERT INTO LIBRO VALUES (18,'El avión de la bella durmiente','El avión de la bella durmiente es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de un hombre que se enamora de una mujer, y decide matar a su marido para poder estar con ella.','1972-01-01',18,18,18);
INSERT INTO LIBRO VALUES (19,'El ahogado más hermoso del mundo','El ahogado más hermoso del mundo es una novela del escritor colombiano Gabriel García Márquez, publicada en 1968. La novela narra la historia de un pueblo que encuentra el cadáver de un hombre, y decide enterrarlo.','1972-01-01',19,19,19);
INSERT INTO LIBRO VALUES (20,'Un día de estos','Un día de estos es una novela del escritor colombiano Gabriel García Márquez, publicada en 1972. La novela narra la historia de un dentista que se niega a atender al alcalde de un pueblo, debido a que este no le ha pagado.','1972-01-01',20,20,20);

INSERT INTO AUTORMATERIAL VALUES (1,1,1);
INSERT INTO AUTORMATERIAL VALUES (2,2,2);
INSERT INTO AUTORMATERIAL VALUES (3,3,3);
INSERT INTO AUTORMATERIAL VALUES (4,4,4);
INSERT INTO AUTORMATERIAL VALUES (5,5,5);
INSERT INTO AUTORMATERIAL VALUES (6,6,6);
INSERT INTO AUTORMATERIAL VALUES (7,7,7);
INSERT INTO AUTORMATERIAL VALUES (8,8,8);
INSERT INTO AUTORMATERIAL VALUES (9,9,9);
INSERT INTO AUTORMATERIAL VALUES (10,10,10);
INSERT INTO AUTORMATERIAL VALUES (11,11,11);
INSERT INTO AUTORMATERIAL VALUES (12,12,12);
INSERT INTO AUTORMATERIAL VALUES (13,13,13);
INSERT INTO AUTORMATERIAL VALUES (14,14,14);
INSERT INTO AUTORMATERIAL VALUES (15,15,15);
INSERT INTO AUTORMATERIAL VALUES (16,16,16);
INSERT INTO AUTORMATERIAL VALUES (17,17,17);
INSERT INTO AUTORMATERIAL VALUES (18,18,18);
INSERT INTO AUTORMATERIAL VALUES (19,19,19);
INSERT INTO AUTORMATERIAL VALUES (20,20,20);

INSERT INTO PRESTAMO VALUES (1,'CC','1234589',2,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (2,'CC','987654321',5,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (3,'CC','12365789',10,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (4,'CC','987654388',12,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (5,'CC','563456789',4,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (6,'CC','987653245',20,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (7,'CC','893456789',15,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (8,'CC','987654321',6,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (9,'CC','9876543432',14,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (10,'CC','987654321',13,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (11,'CC','890456789',11,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (12,'CC','987654321',18,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (13,'CC','987656789',17,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (14,'CC','987654321',16,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (15,'CC','90984321',7,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (16,'CC','120987789',8,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (17,'CC','120987789',9,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (18,'CC','98876789',3,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (19,'CC','127896789',1,'2019-01-01',1);
INSERT INTO PRESTAMO VALUES (20,'CC','9876544321',19,'2019-01-01',1);


-- consultas --

SELECT U.NOMBRE, U.APELLIDO, U.CIUDAD, U.ESCOLARIDAD
FROM USUARIO U;



SELECT L.NOMBRE, L.FECHAPUBLICACION, T.DESCRIPCION AS TIPO_MATERIAL
FROM LIBRO L
INNER JOIN TIPOMATERIAL T ON L.TIPO_ID = T.ID_TIPO;



SELECT NOMBRE, APELLIDO
FROM USUARIO
WHERE CIUDAD = 'Bucaramanga';



SELECT NOMBRE, FECHAPUBLICACION
FROM LIBRO
WHERE TIPO_ID = 2;


SELECT * FROM AREA;
SELECT * FROM TIPOMATERIAL;
SELECT * FROM USUARIO;
SELECT * FROM AUTOR;
SELECT * FROM EDITORIAL;
SELECT * FROM LIBRO;
SELECT * FROM AUTORMATERIAL;
SELECT * FROM PRESTAMO;



UPDATE USUARIO
SET CONTRASENA = 'nombre_del_aprendiz'
WHERE DOCUMENTO = '123456' AND TIPODCTO = 'CC';



DELETE FROM AUTORMATERIAL WHERE LIBRO_ID = 12;



SELECT T.DESCRIPCION, COUNT(*) AS NUM_CONSULTAS
FROM LIBRO L
INNER JOIN PRESTAMO P ON L.ID_LIBRO = P.ID_LIBRO
INNER JOIN TIPOMATERIAL T ON L.TIPO_ID = T.ID_TIPO
INNER JOIN USUARIO U ON P.TIPODCTO = U.TIPODCTO AND P.DOCUMENTO = U.DOCUMENTO
WHERE YEAR(CURDATE()) - YEAR(U.FECHANACIMIENTO) < 21
GROUP BY T.DESCRIPCION
ORDER BY NUM_CONSULTAS DESC
LIMIT 1;



SELECT U.NOMBRE, U.APELLIDO, YEAR(CURDATE()) - YEAR(U.FECHANACIMIENTO) AS EDAD, L.NOMBRE AS MATERIAL, P.FECHAPRESTAMO
FROM PRESTAMO P
INNER JOIN USUARIO U ON P.TIPODCTO = U.TIPODCTO AND P.DOCUMENTO = U.DOCUMENTO
INNER JOIN LIBRO L ON P.ID_LIBRO = L.ID_LIBRO
WHERE YEAR(CURDATE()) - YEAR(U.FECHANACIMIENTO) BETWEEN 8 AND 17 AND L.TIPO_ID = 2
ORDER BY P.FECHAPRESTAMO DESC
LIMIT 1;



SELECT USUARIO.CIUDAD, COUNT(*) AS NUM_CONSULTAS
FROM PRESTAMO
INNER JOIN USUARIO ON PRESTAMO.TIPODCTO = USUARIO.TIPODCTO AND PRESTAMO.DOCUMENTO = USUARIO.DOCUMENTO
GROUP BY USUARIO.CIUDAD
ORDER BY NUM_CONSULTAS DESC
LIMIT 1;



SELECT CONCAT(A.NOMBRE, ' ', A.APELLIDO) AS AUTOR, A.CIUDAD, COUNT(*) AS NUM_MATERIALES
FROM AUTOR A
INNER JOIN AUTORMATERIAL AM ON A.ID_AUTOR = AM.AUTOR_ID
GROUP BY AUTOR, A.CIUDAD;



SELECT U.TIPODCTO, U.DOCUMENTO, U.NOMBRE, U.APELLIDO, U.ESCOLARIDAD, L.NOMBRE AS MATERIAL, L.FECHAPUBLICACION, TM.DESCRIPCION AS TIPO_MATERIAL, A.DESCRIPCION AS AREA, E.NOMBRE AS EDITORIAL
FROM PRESTAMO P
INNER JOIN USUARIO U ON P.TIPODCTO = U.TIPODCTO AND P.DOCUMENTO = U.DOCUMENTO
INNER JOIN LIBRO L ON P.ID_LIBRO = L.ID_LIBRO
INNER JOIN TIPOMATERIAL TM ON L.TIPO_ID = TM.ID_TIPO
INNER JOIN AREA A ON L.AREA_ID = A.ID_AREA
INNER JOIN EDITORIAL E ON L.EDITORIAL_ID = E.ID_EDITORIAL
WHERE P.ESTADO = 1;



SHOW PROCEDURE STATUS WHERE Db = 'biblioteca';


DELIMITER //

CREATE PROCEDURE obtenerMaterialPorTipo(IN tipo INT(11))
BEGIN
    SELECT * FROM LIBRO WHERE TIPO_ID = tipo;
END //

DELIMITER ;

CALL obtenerMaterialPorTipo(1);


DELIMITER //

CREATE PROCEDURE contarMaterialesPorTipo(
    IN tipo INT(11),
    OUT numero INT)
BEGIN
    SELECT COUNT(*) INTO numero FROM LIBRO WHERE TIPO_ID = tipo;
END //

DELIMITER ;

CALL contarMaterialesPorTipo(1, @numero);
SELECT @numero AS contar;