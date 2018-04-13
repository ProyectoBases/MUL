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

CREATE OR REPLACE TRIGGER idSeries
BEFORE INSERT ON series
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM series;
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

CREATE OR REPLACE TRIGGER idDocumentales
BEFORE INSERT ON documentales
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM documentales;
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
/*RAISE_APPLICATION_ERROR(-20000, 'paila');*/
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

CREATE OR REPLACE TRIGGER idUsuarios
BEFORE INSERT ON usuarios
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM usuarios;
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

CREATE OR REPLACE TRIGGER idPeliculas
BEFORE INSERT ON peliculas
FOR EACH ROW
DECLARE numero NUMBER;
BEGIN
SELECT MAX(id)+1 INTO numero FROM peliculas;
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
/*AUTOMATIZAR NUMERO CAPITULOS DOCUMENTALES*/

CREATE OR REPLACE TRIGGER documentalesNumCap
BEFORE INSERT ON documentales
FOR EACH ROW
BEGIN
IF :NEW.numeroCapitulos IS NULL THEN
:NEW.numeroCapitulos :=1;
END IF;
END;
/
/*AUTOMATIZAR NUMERO TEMPORADAS SERIES*/

CREATE OR REPLACE TRIGGER seriesNumTem
BEFORE INSERT ON series
FOR EACH ROW
BEGIN
IF :NEW.numeroTemporadas IS NULL THEN
:NEW.numeroTemporadas :=1;
END IF;
END;
/














