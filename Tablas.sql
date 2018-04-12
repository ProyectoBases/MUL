CREATE TABLE Multimedias(id NUMBER NOT NULL,
						nombre VARCHAR(3000) NOT NULL,
						calificacion NUMBER(2,1) NOT NULL,
						duracion VARCHAR(200) NOT NULL,
						idDirector NUMBER NOT NULL,
						sinopsis VARCHAR(4000) NOT NULL);

CREATE TABLE PremiosMultimedia(id NUMBER NOT NULL,
							nombre VARCHAR(200) NOT NULL,
							categoriaPremio VARCHAR(50) NOT NULL,
							idMultimedia NUMBER NOT NULL);
CREATE TABLE categorias(
    id NUMBER NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    idMultimedia NUMBER NOT NULL
);

CREATE TABLE Series(id NUMBER NOT NULL,
                    idMultimedia NUMBER NOT NULL,
					numeroTemporadas NUMBER(2) NOT NULL);

CREATE TABLE Documentales(
                    id NUMBER NOT NULL,
                    idMultimedia NUMBER NOT NULL,
					numeroCapitulos NUMBER(2) NOT NULL);

CREATE TABLE Temporadas(
    id NUMBER NOT NULL,
    idSerie NUMBER NOT NULL,
    capitulos NUMBER(20) NOT NULL
);

CREATE TABLE capitulosSeries(
    id NUMBER NOT NULL,
    idSerie NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    duracion VARCHAR(20) NOT NULL,
    descripcion VARCHAR(2000) NOT NULL
);
 CREATE TABLE capitulosDocumentales(
    id NUMBER NOT NULL,
    idDocumental NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    duracion VARCHAR(20) NOT NULL,
    descripcion VARCHAR(2000) NOT NULL
 );
 
 CREATE TABLE directores(
    id NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    apellido VARCHAR(300) NOT NULL,
    calificacion NUMBER(5,1) NOT NULL
 );
 CREATE TABLE actua(
    idActor NUMBER NOT NULL,
    idMultimedia NUMBER NOT NULL,
    personaje VARCHAR(20)
 );
 CREATE TABLE actores(
    id NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    apellido VARCHAR(300) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    sexo VARCHAR(9) NOT NULL
 );
 CREATE TABLE premiosActores(
    id NUMBER NOT NULL,
    idActor NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    categoriaPremio VARCHAR(100) NOT NULL
);
CREATE TABLE observa(
    idMultimedia NUMBER NOT NULL,
    idPlantilla NUMBER NOT NULL,
    fecha DATE NOT NULL,
    vistaCompleta NUMBER(1) NOT NULL
);

CREATE TABLE plantillas(
    id NUMBER NOT NULL,
    idSuscripcion NUMBER NOT NULL,
    fechaNacimiento DATE NOT NULL,
    nombre VARCHAR(300) NOT NULL
);

CREATE TABLE suscripciones(
    id NUMBER NOT NULL,
    idUsuario NUMBER NOT NULL,
    idPlan NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    numeroPlantillas NUMBER(1) NOT NULL
);
CREATE TABLE definicionVistas(
    nombre VARCHAR(50) NOT NULL,
    idSuscripcion NUMBER NOT NULL
);
CREATE TABLE usuarios(
    id NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL
);
CREATE TABLE solicita(
    idUsuario NUMBER NOT NULL,
    idSolicitud NUMBER NOT NULL
);
CREATE TABLE solicitudes(
    id NUMBER NOT NULL,
    titulo VARCHAR(300) NOT NULL
);
CREATE TABLE planes(
    id NUMBER NOT NULL,
    nombre VARCHAR(300) NOT NULL
);
CREATE TABLE peliculas(
    id NUMBER NOT NULL,
    idMultimedia NUMBER NOT NULL
);