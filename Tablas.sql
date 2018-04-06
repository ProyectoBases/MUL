CREATE TABLE Multimedia(id NUMBER NOT NULL,
						nombre VARCHAR(300) NOT NULL,
						categoria VARCHAR(30) NOT NULL,
						calificacion NUMBER(2,1) NOT NULL,
						duracion NUMBER(4,2) NOT NULL,
						idDirector NUMBER NOT NULL,
						sinopsis VARCHAR(2000) NOT NULL);

CREATE TABLE PremioMultimedia(id NUMBER NOT NULL,
							nombre VARCHAR(200) NOT NULL,
							categoriaPremio VARCHAR(50) NOT NULL,
							idMultimedia NUMBER NOT NULL);

CREATE TABLE Serie(id NUMBER NOT NULL,
					temporada NUMBER NOT NULL);

CREATE TABLE Documental(id NUMBER NOT NULL,
					numeroCapitulos NUMBER NOT NULL);
