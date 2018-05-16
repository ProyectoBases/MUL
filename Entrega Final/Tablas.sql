CREATE TABLE Multimedias(id NUMBER NOT NULL,
						nombre VARCHAR(3000) NOT NULL,
						calificacion NUMBER(2,1) NOT NULL,
						duracion NUMBER(6,2) NOT NULL,
						idDirector NUMBER NOT NULL,
						sinopsis VARCHAR(4000) NOT NULL,
						fechaEstreno DATE NOT NULL);

CREATE TABLE Categorias(id NUMBER NOT NULL,
						nombre VARCHAR(100) NOT NULL);

CREATE TABLE CategoriasMultimedias(idCategoria NUMBER NOT NULL,
									idMultimedia NUMBER NOT NULL);

CREATE TABLE InfoPremiosMultimedia(id NUMBER NOT NULL,
								nombre VARCHAR(200) NOT NULL,
								categoriaPremio VARCHAR(50) NOT NULL);									
									
CREATE TABLE PremiosMultimedia(idPremio NUMBER NOT NULL,
							idMultimedia NUMBER NOT NULL);
			
CREATE TABLE Series(id NUMBER NOT NULL);

CREATE TABLE Temporadas(id NUMBER NOT NULL,
						idSerie NUMBER NOT NULL);
						
CREATE TABLE InfoTemporadas(idTemporada NUMBER NOT NULL,
							fechaEstreno DATE NOT NULL,
							numeroTemporada NUMBER NOT NULL);

CREATE TABLE CapitulosSeries(id NUMBER NOT NULL,
							idTemporada NUMBER NOT NULL);
							
CREATE TABLE InfoCapitulosSeries(idCapitulo NUMBER NOT NULL,
								nombre VARCHAR(300) NOT NULL,
								duracion VARCHAR(20) NOT NULL,
								descripcion VARCHAR(2000) NOT NULL,
								fechaEstreno DATE NOT NULL,
								numeroCapitulo NUMBER NOT NULL);
							
CREATE TABLE Documentales(id NUMBER NOT NULL);
							
CREATE TABLE CapitulosDocumentales(id NUMBER NOT NULL,
									idDocumental NUMBER NOT NULL);
									
CREATE TABLE InfoCapitulosDocumentales(idCapitulo NUMBER NOT NULL,
										nombre VARCHAR(300) NOT NULL,
										duracion VARCHAR(20) NOT NULL,
										descripcion VARCHAR(2000) NOT NULL,
										fechaEstreno DATE NOT NULL,
										numeroCapitulo NUMBER NOT NULL);
 
CREATE TABLE Directores(id NUMBER NOT NULL,
						nombre VARCHAR(300) NOT NULL,
						apellido VARCHAR(300) NOT NULL,
						calificacion NUMBER(5,1) NOT NULL);
						
CREATE TABLE Actua(idMultimedia NUMBER NOT NULL,
					idActor NUMBER NOT NULL,
					personaje VARCHAR(20));
					
CREATE TABLE Actores(id NUMBER NOT NULL,
					nombre VARCHAR(300) NOT NULL,
					apellido VARCHAR(300) NOT NULL,
					fechaNacimiento DATE NOT NULL,
					fechaFallecimiento DATE,
					sexo VARCHAR(9) NOT NULL);
					
CREATE TABLE InfoPremiosActores(id NUMBER NOT NULL,
								nombre VARCHAR(300) NOT NULL,
								categoriaPremio VARCHAR(100) NOT NULL);
							
CREATE TABLE PremiosActores(idPremio NUMBER NOT NULL,
							idActor NUMBER NOT NULL);
							
CREATE TABLE Observa(idMultimedia NUMBER NOT NULL,
					idPlantilla NUMBER NOT NULL,
					fecha DATE NOT NULL,
					vistaCompleta NUMBER(1) NOT NULL);

CREATE TABLE Plantillas(id NUMBER NOT NULL,
						fechaNacimiento DATE NOT NULL,
						nombre VARCHAR(300) NOT NULL,
						idSuscripcion NUMBER NOT NULL);

CREATE TABLE Suscripciones(id NUMBER NOT NULL,
						nombre VARCHAR(300) NOT NULL,
						numeroPlantillas NUMBER(1) NOT NULL,
						idUsuario NUMBER NOT NULL,
						idPlan NUMBER NOT NULL,
						activa NUMBER(1) NOT NULL);
						
CREATE TABLE DefinicionVistas(nombre VARCHAR(50) NOT NULL,
							idSuscripcion NUMBER NOT NULL);
							
CREATE TABLE Usuarios(correo VARCHAR(100) NOT NULL,
					nombre VARCHAR(300) NOT NULL,
					fechaNacimiento DATE NOT NULL);

CREATE TABLE Solicitudes(id NUMBER NOT NULL,
						titulo VARCHAR(300) NOT NULL);					
					
CREATE TABLE Solicita(idSolicitud NUMBER NOT NULL,
					idUsuario NUMBER NOT NULL);

CREATE TABLE Planes(id NUMBER NOT NULL,
					nombre VARCHAR(300) NOT NULL);

CREATE TABLE Peliculas(id NUMBER NOT NULL);
