CREATE OR REPLACE PACKAGE PA_ADMINISTRADOR AS
PROCEDURE Adicionar_multimedia (id NUMBER,nombre VARCHAR,calificacion NUMBER,duracion VARCHAR,idDirector NUMBER, sinopsis VARCHAR, fechaEstreno DATE);
PROCEDURE Adicionar_serie (id NUMBER);
PROCEDURE Adicionar_pelicula(id NUMBER);
PROCEDURE Adicionar_temporada (id NUMBER,idSerie NUMBER ,fechaEstreno DATE,numeroTemporada NUMBER);
PROCEDURE Adicionar_capSeri (id NUMBER,idTemporada NUMBER,idSerie NUMBER,nombre VARCHAR,duracion VARCHAR,descripcion VARCHAR,fechaEstreno DATE,numeroCapitulo NUMBER);
PROCEDURE Adicionar_documental (id NUMBER);
PROCEDURE Adicionar_capDo (id NUMBER,idDocumental NUMBER, nombre VARCHAR, duracion VARCHAR, descripcion VARCHAR, fechaEstreno DATE, numeroCapitulo NUMBER);

PROCEDURE Modificar_multimedia (id NUMBER,nombre VARCHAR,calificacion NUMBER,duracion VARCHAR,idDirector NUMBER, sinopsis VARCHAR, fechaEstreno DATE);
PROCEDURE Modificar_capSer (id NUMBER,idTemporada NUMBER,idSerie NUMBER,nombre VARCHAR,duracion VARCHAR,descripcion VARCHAR,fechaEstreno DATE,numeroCapitulo NUMBER);
PROCEDURE Modificar_capDoc (id NUMBER,idDocumental NUMBER, nombre VARCHAR, duracion VARCHAR, descripcion VARCHAR, fechaEstreno DATE, numeroCapitulo NUMBER);


PROCEDURE Eliminar_multimedia (id NUMBER);


FUNCTION Consultar_multimedia (id NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_series (numero NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_peliculas (numero NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_documental (numero NUMBER) RETURN SYS_REFCURSOR;

PROCEDURE Adicionar_director (id NUMBER, nombre VARCHAR, apellido VARCHAR, calificacion NUMBER);
PROCEDURE Modificar_director (id NUMBER, nombre VARCHAR, apellido VARCHAR, calificacion NUMBER);

FUNCTION Consultar_director (numero NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_multimedia_director (numeroDirector NUMBER) RETURN SYS_REFCURSOR;


PROCEDURE Adicionar_actor (id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE);
PROCEDURE Adicionar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR);


PROCEDURE Actualizar_actor (id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE);
PROCEDURE Actualizar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR);

PROCEDURE Eliminar_actor (id NUMBER,fechaFallecimiento DATE,detalle XMLTYPE);
PROCEDURE Eliminar_actua (idActor NUMBER, idMultimedia NUMBER, personaje VARCHAR);

FUNCTION Mostrar_actor (numero NUMBER) RETURN XMLTYPE;
FUNCTION Mostrar_actua (numero NUMBER) RETURN SYS_REFCURSOR;



PROCEDURE Adicionar_observa (idMultimedia NUMBER, idPlantilla NUMBER, fecha DATE,vistaCompleta NUMBER);
PROCEDURE Adicionar_plantilla (id NUMBER,fechaNacimiento DATE,nombre VARCHAR,idSuscripcion NUMBER);
PROCEDURE Adicionar_suscripcion (id NUMBER,nombre VARCHAR,numeroPlantillas NUMBER, idUsuario VARCHAR, idPlan NUMBER,activa NUMBER);
PROCEDURE Adicionar_usuario (correo VARCHAR,nombre VARCHAR,fechaNacimiento DATE);
PROCEDURE Adicionar_solicitud (id NUMBER,titulo VARCHAR);
PROCEDURE Adicionar_solicita (idSolicitud NUMBER,idUsuario VARCHAR);
PROCEDURE Adicionar_plan (id NUMBER, nombre VARCHAR);


PROCEDURE Modificar_observa (idMultimedia NUMBER, idPlantilla NUMBER, fecha DATE,vistaCompleta NUMBER);
PROCEDURE Modificar_plantilla (id NUMBER,fechaNacimiento DATE,nombre VARCHAR,idSuscripcion NUMBER);
PROCEDURE Modificar_suscripcion (id NUMBER,nombre VARCHAR,numeroPlantillas NUMBER, idUsuario VARCHAR, idPlan NUMBER,activa NUMBER);
PROCEDURE Modificar_usuario (correo VARCHAR,nombre VARCHAR,fechaNacimiento DATE);
PROCEDURE Modificar_solicitud (id NUMBER,titulo VARCHAR);
PROCEDURE Modificar_solicita (idSolicitud NUMBER,idUsuario VARCHAR);
PROCEDURE Modificar_plan (id NUMBER, nombre VARCHAR);


PROCEDURE Eliminar_observa (idMultimedia NUMBER, idPlantilla NUMBER);
PROCEDURE Eliminar_plantilla (id NUMBER);
PROCEDURE Eliminar_suscripcion (id NUMBER);
PROCEDURE Eliminar_usuario (correo VARCHAR);
PROCEDURE Eliminar_solicitud (id NUMBER);
PROCEDURE Eliminar_solicita (idSolicitud NUMBER,idUsuario VARCHAR);
PROCEDURE Eliminar_plan (id NUMBER);


END PA_ADMINISTRADOR;
/


CREATE OR REPLACE PACKAGE PA_USUARIO AS
FUNCTION Consultar_multimedia (id NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_series (numero NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_peliculas (numero NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_documental (numero NUMBER) RETURN SYS_REFCURSOR;



FUNCTION Mostrar_actor (numero NUMBER) RETURN XMLTYPE;
FUNCTION Mostrar_actua (numero NUMBER) RETURN SYS_REFCURSOR;

FUNCTION Consultar_director (numero NUMBER) RETURN SYS_REFCURSOR;
FUNCTION Consultar_multimedia_director (numeroDirector NUMBER) RETURN SYS_REFCURSOR;



END PA_USUARIO;