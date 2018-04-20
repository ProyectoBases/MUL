INSERT INTO multimedias(nombre,calificacion,duracion,idDirector,sinopsis)VALUES('los juegos',6,'1 hota',5,'es una pelicula muy buena');
INSERT INTO directores (nombre,apellido,calificacion) VALUES('ju_333_an','restrepo',3);
INSERT INTO directores (nombre,apellido,calificacion) VALUES('juan','restrepo1',3);
INSERT INTO actua (idActor,idMultimedia,personaje) VALUES(5,8,'uno');
INSERT INTO actores (nombre,apellido,fechaNacimiento,sexo) VALUES ('andres2','gualdron',TO_DATE('2-3-1979','DD-MM-YYYY'),'masculino');
INSERT INTO actores (nombre,apellido,fechaNacimiento,sexo) VALUES ('andres','gualdron',TO_DATE('2-3-1979','DD-MM-YYYY'),'hombre');
INSERT INTO observa (idMultimedia,idPlantilla,vistaCompleta) VALUES (8,15,2);
INSERT INTO usuarios (nombre,correo,fechaNacimiento) VALUES('felipe','andres',TO_DATE('2-3-1979','DD-MM-YYYY'));
