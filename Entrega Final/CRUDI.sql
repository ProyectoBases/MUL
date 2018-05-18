CREATE OR REPLACE PACKAGE BODY PC_MULTIMEDIA AS
PROCEDURE Adicionar_multimedia (id NUMBER,nombre VARCHAR,calificacion NUMBER,duracion VARCHAR,idDirector NUMBER, sinopsis VARCHAR, fechaEstreno DATE) AS
BEGIN
INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'No se puede adicionar en multimedias');
END Adicionar_multimedia;

PROCEDURE Adicionar_serie (id NUMBER) AS
BEGIN
INSERT INTO series (id) VALUES (id);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar la serie');
END Adicionar_serie;

PROCEDURE Adicionar_temporada (id NUMBER,idSerie NUMBER ,fechaEstreno DATE,numeroTemporada NUMBER) AS
BEGIN
INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES (id,idSerie,fechaEstreno,numeroTemporada);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar la temporada');
END Adicionar_temporada;

PROCEDURE Adicionar_pelicula (id NUMBER) AS
BEGIN
INSERT INTO peliculas (id) VALUES (id);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo agregar la pelicula.');
END Adicionar_pelicula;

PROCEDURE Adicionar_documental (id NUMBER) AS
BEGIN
INSERT INTO documentales (id) VALUES (id);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar el documental');
END Adicionar_documental;

PROCEDURE Adicionar_capSeri (id NUMBER,idTemporada NUMBER,idSerie NUMBER,nombre VARCHAR,duracion VARCHAR,descripcion VARCHAR,fechaEstreno DATE,numeroCapitulo NUMBER) AS
BEGIN
INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar el capitulo de la serie');
END Adicionar_capSeri;

PROCEDURE Adicionar_capDo (id NUMBER,idDocumental NUMBER, nombre VARCHAR, duracion VARCHAR, descripcion VARCHAR, fechaEstreno DATE, numeroCapitulo NUMBER) AS
BEGIN
INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar el capitulo deL DOCUMENTAL');
END Adicionar_capDO;

PROCEDURE Modificar_multimedia (id NUMBER,nombre VARCHAR,calificacion NUMBER,duracion VARCHAR,idDirector NUMBER, sinopsis VARCHAR, fechaEstreno DATE) AS
BEGIN
UPDATE multimedias SET nombre = nombre, calificacion = calificacion, duracion = duracion, idDirector = idDirector,sinopsis=sinopsis,fechaEstreno = fechaEstreno WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo actualizar la multimedia');
END Modificar_multimedia;

PROCEDURE Modificar_capSer (id NUMBER,idTemporada NUMBER,idSerie NUMBER,nombre VARCHAR,duracion VARCHAR,descripcion VARCHAR,fechaEstreno DATE,numeroCapitulo NUMBER) AS
BEGIN
UPDATE capitulosSeries SET idTemporada = idTemporada, idSerie = idSerie, nombre = nombre, duracion = duracion, descripcion = descripcion, fechaEstreno = fechaEstreno, numeroCapitulo = numeroCapitulo WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo actualizar el capitulo de la serie');
END Modificar_capSer;

PROCEDURE Modificar_capDoc (id NUMBER,idDocumental NUMBER, nombre VARCHAR, duracion VARCHAR, descripcion VARCHAR, fechaEstreno DATE, numeroCapitulo NUMBER) AS
BEGIN
UPDATE capitulosDocumentales SET idDocumental = idDocumental, nombre = nombre, duracion = duracion, descripcion = descripcion, fechaEstreno = fechaEstreno, numeroCapitulo = numeroCapitulo WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo actualizar el capitulo del documental');
END Modificar_capDoc;

PROCEDURE Eliminar_multimedia (id NUMBER) AS
BEGIN
DELETE FROM multimedias WHERE id=id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar la multimedia');
END Eliminar_multimedia;

FUNCTION Consultar_multimedia (id NUMBER) RETURN SYS_REFCURSOR IS mult SYS_REFCURSOR;
BEGIN
IF id IS NULL THEN
OPEN mult FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno FROM multimedias;
ELSE
OPEN mult FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno FROM multimedias WHERE id = id;
END IF;
RETURN(mult);
END Consultar_multimedia;

FUNCTION Consultar_series (numero NUMBER) RETURN SYS_REFCURSOR IS ser SYS_REFCURSOR;
BEGIN
IF numero IS NULL THEN
OPEN ser FOR
SELECT multimedias.nombre, COUNT(observa.idMultimedia),observa.idMultimedia
FROM multimedias,observa,series 
WHERE multimedias.id = series.id AND multimedias.id = observa.idMultimedia
GROUP BY multimedias.nombre,observa.idMultimedia
ORDER BY COUNT(observa.idMultimedia) DESC;
ELSE
OPEN ser FOR
SELECT multimedias.nombre, COUNT(observa.idMultimedia),observa.idMultimedia
FROM multimedias,observa,series 
WHERE multimedias.id = series.id AND multimedias.id = observa.idMultimedia AND series.id = numero
GROUP BY multimedias.nombre,observa.idMultimedia
ORDER BY COUNT(observa.idMultimedia) DESC;
END IF;
RETURN(ser);
END Consultar_series;

FUNCTION Consultar_peliculas (numero NUMBER) RETURN SYS_REFCURSOR IS pel SYS_REFCURSOR;
BEGIN
IF numero IS NULL THEN
OPEN pel FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno
FROM multimedias,peliculas
WHERE multimedias.id = peliculas.id;
ELSE
OPEN pel FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno
FROM multimedias,peliculas
WHERE multimedias.id = peliculas.id AND peliculas.id = numero;
END IF;
RETURN(pel);
END Consultar_peliculas;

FUNCTION Consultar_documental (numero NUMBER) RETURN SYS_REFCURSOR IS doc SYS_REFCURSOR;
BEGIN
IF numero IS NULL THEN
OPEN doc FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno
FROM multimedias,documentales
WHERE multimedias.id = documentales.id;
ELSE
OPEN doc FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno
FROM multimedias,documentales
WHERE multimedias.id = documentales.id AND documentales.id = numero;
END IF;
RETURN(doc);
END Consultar_documental;

FUNCTION Consultar_observa (multimedia NUMBER, plantilla NUMBER) RETURN SYS_REFCURSOR IS ob SYS_REFCURSOR;
BEGIN
IF multimedia IS NULL AND plantilla IS NULL THEN
OPEN ob FOR
SELECT * FROM observa;
ELSIF multimedia IS NULL AND plantilla IS NOT NULL THEN
OPEN ob FOR
SELECT multimedias.nombre FROM multimedias,observa,plantillas
WHERE multimedias.id = observa.idMultimedia AND observa.idPlantilla = plantillas.id AND observa.idPlantilla = plantilla;
ELSIF multimedia IS NOT NULL AND plantilla IS NULL THEN
OPEN ob FOR
SELECT plantillas.id,plantillas.nombre
FROM multimedias,observa,plantillas
WHERE multimedias.id = observa.idMultimedia AND observa.idPlantilla = plantillas.id AND observa.idMultimedia = multimedia;
ELSE
OPEN ob FOR
SELECT multimedias.nombre, plantillas.nombre
FROM multimedias,observa,plantillas
WHERE multimedias.id = observa.idMultimedia AND observa.idPlantilla = plantillas.id AND observa.idMultimedia = multimedia AND observa.idPlantilla = plantilla;
END IF;
RETURN(ob);
END Consultar_observa;

END PC_MULTIMEDIA;
/


CREATE OR REPLACE PACKAGE BODY PC_DIRECTOR AS

PROCEDURE Adicionar_director (id NUMBER, nombre VARCHAR, apellido VARCHAR, calificacion NUMBER) AS
BEGIN
INSERT INTO directores (id,nombre,apellido,calificacion) VALUES (id,nombre,apellido,calificacion);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo insertar el director');
END Adicionar_director;

PROCEDURE Modificar_director (id NUMBER, nombre VARCHAR, apellido VARCHAR, calificacion NUMBER) AS
BEGIN
UPDATE directores SET nombre = nombre, apellido = apellido, calificacion = calificacion WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo actualizar el director');
END Modificar_director;


FUNCTION Consultar_director (numero NUMBER) RETURN SYS_REFCURSOR IS direc SYS_REFCURSOR;
BEGIN
IF numero IS NULL THEN
OPEN direc FOR
SELECT nombre,apellido,calificacion FROM directores;
ELSE
OPEN direc FOR
SELECT nombre,apellido,calificacion FROM directores WHERE id = numero;
END IF;
RETURN(direc);
END Consultar_director;

FUNCTION Consultar_multimedia_director (numeroDirector NUMBER) RETURN SYS_REFCURSOR IS dir sys_refcursor;
BEGIN
IF numeroDirector IS NULL THEN
OPEN dir FOR
SELECT multimedias.nombre, multimedias.calificacion, multimedias.duracion, directores.nombre
FROM multimedias,directores
WHERE multimedias.idDirector = directores.id;
ELSE
OPEN dir FOR
SELECT multimedias.nombre, multimedias.calificacion, multimedias.duracion, directores.nombre
FROM multimedias,directores
WHERE multimedias.idDirector = directores.id AND numeroDirector = directores.id;
END IF;
END Consultar_multimedia_director;

END PC_DIRECTOR;
/

CREATE OR REPLACE PACKAGE BODY PC_ACTOR AS
PROCEDURE Adicionar_actor (id NUMBER,fechaFallecimiento DATE, detalle XMLTYPE) AS
BEGIN
INSERT INTO actores (id,fechaFallecimiento,detalle) VALUES (id,fechaFallecimiento,detalle);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar el actor');
END Adicionar_actor;

PROCEDURE Adicionar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR) AS
BEGIN
INSERT INTO actua (idActor,idMultimedia,personaje) VALUES (idActor,idMultimedia,personaje);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar actua');
END Adicionar_actua;

PROCEDURE Actualizar_actor(id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE) AS
BEGIN
UPDATE actores SET fechaFallecimiento = fechaFallecimiento, detalle = detalle WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo actualizar actor');
END Actualizar_actor;

PROCEDURE Actualizar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR) AS
BEGIN
UPDATE actua SET personaje = personaje WHERE idActor = idActor AND idMultimedia=idMultimedia;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo actualizar actua');
END Actualizar_actua;

PROCEDURE Eliminar_actor(id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE) AS
BEGIN
DELETE FROM actores WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar el actor');
END Eliminar_actor;

PROCEDURE Eliminar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR) AS
BEGIN
DELETE FROM actua WHERE idActor = idActor AND idMultimedia = idMultimedia;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'no se puede eliminar actua');
END Eliminar_actua;

FUNCTION Mostrar_actor (numero NUMBER) RETURN XMLTYPE IS act XMLTYPE;
BEGIN
IF numero IS NULL THEN
act := dbms_xmlgen.getxmltype('SELECT * FROM actores');
ELSE
act := dbms_xmlgen.getxmltype(CONCAT(CONCAT('SELECT * FROM actores WHERE ',numero),'=id'));
END IF;
RETURN act;
END Mostrar_actor;

FUNCTION Mostrar_actua (numero NUMBER) RETURN SYS_REFCURSOR IS actu SYS_REFCURSOR;
BEGIN
IF numero IS NULL THEN
OPEN actu FOR
SELECT multimedias.nombre,actua.personaje 
FROM multimedias,actua
WHERE multimedias.id = actua.idMultimedia;
ELSE
OPEN actu FOR
SELECT multimedias.nombre,actua.personaje 
FROM multimedias,actua
WHERE multimedias.id = actua.idMultimedia AND numero = actua.idActor;
END IF;
RETURN(actu);
END Mostrar_actua;

END PC_ACTOR;
/


CREATE OR REPLACE PACKAGE BODY PC_SUSCRIPCION AS

PROCEDURE Adicionar_observa (idMultimedia NUMBER, idPlantilla NUMBER, fecha DATE,vistaCompleta NUMBER) AS
BEGIN
INSERT INTO observa (idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES (idMultimedia,idPlantilla,fecha,vistaCompleta);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar observa.');
END Adicionar_observa;

PROCEDURE Adicionar_plantilla (id NUMBER,fechaNacimiento DATE,nombre VARCHAR,idSuscripcion NUMBER) AS
BEGIN
INSERT INTO plantillas (id,fechaNacimiento,nombre,idSuscripcion) VALUES (id,fechaNacimiento,nombre,idSuscripcion);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar la plantilla.');
END Adicionar_plantilla;

PROCEDURE Adicionar_suscripcion (id NUMBER,nombre VARCHAR,numeroPlantillas NUMBER, idUsuario VARCHAR, idPlan NUMBER,activa NUMBER) AS
BEGIN
INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES (id,nombre,numeroPlantillas,idUsuario,idPlan,activa);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar la suscripcion.');
END Adicionar_suscripcion;

PROCEDURE Adicionar_usuario (correo VARCHAR,nombre VARCHAR,fechaNacimiento DATE) AS
BEGIN
INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES (correo,nombre,fechaNacimiento);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar el usuario.');
END Adicionar_usuario;

PROCEDURE Adicionar_solicitud (id NUMBER,titulo VARCHAR) AS
BEGIN
INSERT INTO solicitudes (id,titulo) VALUES (id,titulo);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar la solicitud.');
END Adicionar_solicitud;

PROCEDURE Adicionar_solicita (idSolicitud NUMBER,idUsuario VARCHAR) AS
BEGIN
INSERT INTO solicita (idSolicitud,idUsuario) VALUES (idSolicitud,idUsuario);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar solicita.');
END Adicionar_solicita;

PROCEDURE Adicionar_plan (id NUMBER, nombre VARCHAR) AS
BEGIN
INSERT INTO planes (id,nombre) VALUES (id,nombre);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar el plan');
END Adicionar_plan;



PROCEDURE Modificar_observa (idMultimedia NUMBER, idPlantilla NUMBER, fecha DATE,vistaCompleta NUMBER) AS
BEGIN
UPDATE observa SET vistaCompleta = vistaCompleta WHERE idMultimedia = idMultimedia AND idPlantilla=idPlantilla;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar observa');
END Modificar_observa;

PROCEDURE Modificar_plantilla (id NUMBER,fechaNacimiento DATE,nombre VARCHAR,idSuscripcion NUMBER) AS
BEGIN
UPDATE plantillas SET fechaNacimiento = fechaNacimiento, nombre=nombre, idSuscripcion = idSuscripcion WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar la plantilla');
END Modificar_plantilla;

PROCEDURE Modificar_suscripcion (id NUMBER,nombre VARCHAR,numeroPlantillas NUMBER, idUsuario VARCHAR, idPlan NUMBER,activa NUMBER) AS
BEGIN
UPDATE suscripciones SET nombre=nombre,numeroPlantillas=numeroPlantillas,activa = activa WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar la suscripcion');
END Modificar_suscripcion;

PROCEDURE Modificar_usuario (correo VARCHAR,nombre VARCHAR,fechaNacimiento DATE) AS
BEGIN
UPDATE usuarios SET nombre = nombre, fechaNacimiento = fechaNacimiento WHERE correo = correo;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar el usuario');
END Modificar_usuario;

PROCEDURE Modificar_solicitud (id NUMBER,titulo VARCHAR) AS
BEGIN
UPDATE solicitudes SET titulo = titulo WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar la solicitud');
END Modificar_solicitud;

PROCEDURE Modificar_solicita (idSolicitud NUMBER,idUsuario VARCHAR) AS
BEGIN
UPDATE solicita SET idSolicitud = idSolicitud, idUsuario=idUsuario WHERE idSolicitud = idSolicitud AND idUsuario=idUsuario;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar solicita');
END Modificar_solicita;

PROCEDURE Modificar_plan (id NUMBER, nombre VARCHAR) AS
BEGIN
UPDATE planes SET nombre = nombre WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo modificar el plan');
END Modificar_plan;




PROCEDURE Eliminar_observa (idMultimedia NUMBER, idPlantilla NUMBER) AS
BEGIN
DELETE FROM observa WHERE idMultimedia = idMultimedia AND idPlantilla=idPlantilla;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar observa');
END Eliminar_observa;

PROCEDURE Eliminar_plantilla (id NUMBER) AS
BEGIN
DELETE FROM plantillas WHERE id=id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar plantilla');
END Eliminar_plantilla;

PROCEDURE Eliminar_suscripcion (id NUMBER) AS
BEGIN
DELETE FROM suscripciones WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar la suscripcion');
END Eliminar_suscripcion;

PROCEDURE Eliminar_usuario (correo VARCHAR) AS
BEGIN
DELETE FROM usuarios WHERE correo = correo;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar el usuario');
END Eliminar_usuario;

PROCEDURE Eliminar_solicitud (id NUMBER) AS
BEGIN
DELETE FROM solicitudes WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar la solicitud');
END Eliminar_solicitud;

PROCEDURE Eliminar_solicita (idSolicitud NUMBER,idUsuario VARCHAR) AS
BEGIN
DELETE FROM solicita WHERE idSolicitud = idSolicitud AND idUsuario = idUsuario;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar solicita');
END Eliminar_solicita;

PROCEDURE Eliminar_plan (id NUMBER) AS
BEGIN
DELETE FROM planes WHERE id = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20000, 'no se pudo eliminar el plan');
END Eliminar_plan;


END PC_SUSCRIPCION;
/
