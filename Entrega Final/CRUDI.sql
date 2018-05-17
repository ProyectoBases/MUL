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
RAISE_APPLICATION_ERROR(-20000, 'no se pudo adicionar la serie');
END Adicionar_temporada;

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

FUNCTION Consultar_multimedia RETURN SYS_REFCURSOR IS mult SYS_REFCURSOR;
BEGIN
OPEN mult FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno FROM multimedias;
RETURN(mult);
END Consultar_multimedia;

FUNCTION Consultar_series RETURN SYS_REFCURSOR IS ser SYS_REFCURSOR;
BEGIN
OPEN ser FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno 
FROM multimedias,series
WHERE multimedias.id = series.id;
RETURN(ser);
END Consultar_series;

FUNCTION Consultar_peliculas RETURN SYS_REFCURSOR IS pel SYS_REFCURSOR;
BEGIN
OPEN pel FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno
FROM multimedias,peliculas
WHERE multimedias.id = peliculas.id;
RETURN(pel);
END Consultar_peliculas;

FUNCTION Consultar_documental RETURN SYS_REFCURSOR IS doc SYS_REFCURSOR;
BEGIN
OPEN doc FOR
SELECT nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno
FROM multimedias,documentales
WHERE multimedias.id = documentales.id;
RETURN(doc);
END Consultar_documental;

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

FUNCTION Consultar_director RETURN SYS_REFCURSOR IS direc SYS_REFCURSOR;
BEGIN
OPEN direc FOR
SELECT nombre,apellido,calificacion FROM directores;
RETURN(direc);
END Consultar_director;

END PC_DIRECTOR;







