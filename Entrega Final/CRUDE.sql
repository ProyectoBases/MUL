---MODELO FISICO---

--MANTENER MULTIMEDIA--

CREATE OR REPLACE PACKAGE PC_MULTIMEDIA AS
PROCEDURE Adicionar_multimedia (id NUMBER,nombre VARCHAR,calificacion NUMBER,duracion VARCHAR,idDirector NUMBER, sinopsis VARCHAR, fechaEstreno DATE);
PROCEDURE Adicionar_serie (id NUMBER);
PROCEDURE Adicionar_temporada (id NUMBER,idSerie NUMBER ,fechaEstreno DATE,numeroTemporada NUMBER);
PROCEDURE Adicionar_capSeri (id NUMBER,idTemporada NUMBER,idSerie NUMBER,nombre VARCHAR,duracion VARCHAR,descripcion VARCHAR,fechaEstreno DATE,numeroCapitulo NUMBER);
PROCEDURE Adicionar_documental (id NUMBER);
PROCEDURE Adicionar_capDo (id NUMBER,idDocumental NUMBER, nombre VARCHAR, duracion VARCHAR, descripcion VARCHAR, fechaEstreno DATE, numeroCapitulo NUMBER);

PROCEDURE Modificar_multimedia (id NUMBER,nombre VARCHAR,calificacion NUMBER,duracion VARCHAR,idDirector NUMBER, sinopsis VARCHAR, fechaEstreno DATE);
PROCEDURE Modificar_capSer (id NUMBER,idTemporada NUMBER,idSerie NUMBER,nombre VARCHAR,duracion VARCHAR,descripcion VARCHAR,fechaEstreno DATE,numeroCapitulo NUMBER);
PROCEDURE Modificar_capDoc (id NUMBER,idDocumental NUMBER, nombre VARCHAR, duracion VARCHAR, descripcion VARCHAR, fechaEstreno DATE, numeroCapitulo NUMBER);


PROCEDURE Eliminar_multimedia (id NUMBER);


FUNCTION Consultar_multimedia RETURN SYS_REFCURSOR;
FUNCTION Consultar_series RETURN SYS_REFCURSOR;
FUNCTION Consultar_peliculas RETURN SYS_REFCURSOR;
FUNCTION Consultar_documental RETURN SYS_REFCURSOR;
END PC_multimedia;
/

--MANTENER DIRECTOR--
CREATE OR REPLACE PACKAGE PC_DIRECTOR AS
PROCEDURE Adicionar_director (id NUMBER, nombre VARCHAR, apellido VARCHAR, calificacion NUMBER);
PROCEDURE Modificar_director (id NUMBER, nombre VARCHAR, apellido VARCHAR, calificacion NUMBER);
PROCEDURE Eliminar_director (id NUMBER);

FUNCTION Consultar_director RETURN SYS_REFCURSOR;
END PC_DIRECTOR;
/


--MANTENER ACTOR--
CREATE OR REPLACE PACKAGE PC_ACTOR AS
PROCEDURE Adicionar_actor (id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE);
PROCEDURE Adicionar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR);


PROCEDURE Actualizar_actor (id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE);


END PC_ACTOR;


--MANTENER SUSCRIPCION--