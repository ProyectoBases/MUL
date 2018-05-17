/*AUTOMATIZAR IDS*/

CREATE OR REPLACE TRIGGER idMultimedias
BEFORE INSERT ON multimedias
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM multimedias;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idCategorias
BEFORE INSERT ON categorias
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM categorias;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/


CREATE OR REPLACE TRIGGER idPremiosM
BEFORE INSERT ON premiosMultimedia
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM premiosMultimedia;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/


CREATE OR REPLACE TRIGGER idTemporadas
BEFORE INSERT ON temporadas
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM temporadas;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idCapituSer
BEFORE INSERT ON capitulosSeries
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM capitulosSeries;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/



CREATE OR REPLACE TRIGGER idCapitulosDoc
BEFORE INSERT ON capitulosDocumentales
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM capitulosDocumentales;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idDirectores
BEFORE INSERT ON directores
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM directores;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idActores
BEFORE INSERT ON actores
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM actores;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idPremiosAc
BEFORE INSERT ON premiosActores
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM premiosActores;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idPlantillas
BEFORE INSERT ON plantillas
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM plantillas;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idSuscripciones
BEFORE INSERT ON suscripciones
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM suscripciones;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/


CREATE OR REPLACE TRIGGER idSolicitudes
BEFORE INSERT ON solicitudes
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM solicitudes;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/

CREATE OR REPLACE TRIGGER idPlanes
BEFORE INSERT ON planes
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM planes;
IF numero IS NULL THEN
:NEW.id := 0;
ELSE
:NEW.id := numero;
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
:NEW.id := 0;
END;
/



/*AUTOMATIZAR FECHAS*/
CREATE OR REPLACE TRIGGER fechaObserva
BEFORE INSERT ON observa
FOR EACH ROW
DECLARE fech DATE;
BEGIN
SELECT SYSDATE INTO fech FROM DUAL;
:NEW.fecha := fech;
END;
/


CREATE OR REPLACE TRIGGER fechaTem
BEFORE INSERT ON temporadas
FOR EACH ROW
DECLARE
num NUMBER;
fecha DATE;
BEGIN
SELECT fechaEstreno INTO fecha FROM multimedias WHERE id = :NEW.idSerie;
SELECT COUNT(*) INTO num FROM temporadas WHERE idSerie = :NEW.idSerie;
IF (num = 0) THEN
:NEW.fechaEstreno := fecha;
END IF;
:NEW.numeroTemporada := num+1;
END;
/

CREATE OR REPLACE TRIGGER fechaCapSe
BEFORE INSERT ON capitulosSeries
FOR EACH ROW
DECLARE
num NUMBER;
fecha DATE;
BEGIN
SELECT fechaEstreno INTO fecha FROM temporadas WHERE idSerie = :NEW.idSerie AND id = :NEW.idTemporada;
SELECT COUNT(*) INTO num FROM capitulosSeries WHERE idSerie = :NEW.idSerie AND idTemporada = :NEW.idTemporada;
IF (num = 0) THEN
:NEW.fechaEstreno := fecha;
END IF;
:NEW.numeroCapitulo := num+1;
END;
/

CREATE OR REPLACE TRIGGER fechaCapDo
BEFORE INSERT ON capitulosDocumentales
FOR EACH ROW
DECLARE
num NUMBER;
fecha DATE;
BEGIN
SELECT fechaEstreno INTO fecha FROM multimedias WHERE id = :NEW.idDocumental;
SELECT COUNT(*) INTO num FROM capitulosDocumentales WHERE idDocumental = :NEW.idDocumental;
IF (num = 0) THEN
:NEW.fechaEstreno := fecha;
END IF;
:NEW.numeroCapitulo := num+1;
END;
/
/*VERIFICAR NO REPETICION DE PELICULAR EN SERIES O DOCUMENTALES*/

CREATE OR REPLACE TRIGGER verPelicula
BEFORE INSERT ON peliculas
FOR EACH ROW
DECLARE
series NUMBER;
documentales NUMBER;
BEGIN
SELECT COUNT(*) INTO series FROM series WHERE :NEW.id = id;
SELECT COUNT(*) INTO documentales FROM documentales WHERE :NEW.id = id;
IF (series > 0 OR documentales > 0) THEN
RAISE_APPLICATION_ERROR(-20000, 'El contenido ya existe como serie o documental');
END IF;
END;
/
CREATE OR REPLACE TRIGGER verSerie
BEFORE INSERT ON series
FOR EACH ROW
DECLARE
peliculas NUMBER;
documentales NUMBER;
BEGIN
SELECT COUNT(*) INTO peliculas FROM peliculas WHERE :NEW.id = id;
SELECT COUNT(*) INTO documentales FROM documentales WHERE :NEW.id = id;
IF (peliculas > 0 OR documentales > 0) THEN
RAISE_APPLICATION_ERROR(-20000, 'El contenido ya existe como pelicula o documental');
END IF;
END;
/

CREATE OR REPLACE TRIGGER verDocumental
BEFORE INSERT ON documentales
FOR EACH ROW
DECLARE
series NUMBER;
peliculas NUMBER;
BEGIN
SELECT COUNT(*) INTO series FROM series WHERE :NEW.id = id;
SELECT COUNT(*) INTO peliculas FROM peliculas WHERE :NEW.id = id;
IF (series > 0 OR peliculas > 0) THEN
RAISE_APPLICATION_ERROR(-20000, 'El contenido ya existe como serie o pelicula');
END IF;
END;
/
/*NO SE PERMITE ELIMINAR DIRECTORES*/
CREATE OR REPLACE TRIGGER eliminarDirector
BEFORE DELETE ON directores
FOR EACH ROW
BEGIN
RAISE_APPLICATION_ERROR(-20000,'No se permite eliminar directores');
END;
/
/*no se eliminan las suscripciones*/

CREATE OR REPLACE TRIGGER eliminarSuscripciones
BEFORE DELETE ON suscripciones
FOR EACH ROW
BEGIN
UPDATE suscripciones SET activa = 0 WHERE :NEW.id = id;
RAISE_APPLICATION_ERROR(-20000, 'la suscripcion quedo inactiva');
END;
/









