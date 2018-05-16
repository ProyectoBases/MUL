ALTER TABLE Multimedias 
	ADD CONSTRAINT PK_multimedias PRIMARY KEY (id);
ALTER TABLE Categorias 
	ADD CONSTRAINT PK_categorias PRIMARY KEY (id);
ALTER TABLE CategoriasMultimedias 
	ADD CONSTRAINT PK_categoriasM PRIMARY KEY (idCategoria,idMultimedia);
ALTER TABLE PremiosMultimedia 
	ADD CONSTRAINT PK_premiosM PRIMARY KEY (id,idMultimedia);
ALTER TABLE Series 
	ADD CONSTRAINT PK_series PRIMARY KEY (id);
ALTER TABLE Temporadas 
	ADD CONSTRAINT PK_temporadas PRIMARY KEY (id,idSerie);
ALTER TABLE CapitulosSeries 
	ADD CONSTRAINT PK_capSeries PRIMARY KEY (id,idTemporada,idSerie);
ALTER TABLE Documentales 
	ADD CONSTRAINT PK_documentales PRIMARY KEY (id);
ALTER TABLE CapitulosDocumentales 
	ADD CONSTRAINT PK_capDoc PRIMARY KEY (id,idDocumental);
ALTER TABLE Directores 
	ADD CONSTRAINT PK_directores PRIMARY KEY(id);
ALTER TABLE Actua 
	ADD CONSTRAINT PK_actua PRIMARY KEY(idActor,idMultimedia);
ALTER TABLE Actores 
	ADD CONSTRAINT PK_actores PRIMARY KEY (id);
ALTER TABLE PremiosActores 
	ADD CONSTRAINT PK_premiosA PRIMARY KEY (id,idActor);
ALTER TABLE Observa 
	ADD CONSTRAINT PK_observa PRIMARY KEY (idMultimedia,idPlantilla);
ALTER TABLE Plantillas 
	ADD CONSTRAINT PK_plantilla PRIMARY KEY (id);
ALTER TABLE Suscripciones 
	ADD CONSTRAINT PK_suscripc PRIMARY KEY (id);
ALTER TABLE DefinicionVistas 
	ADD CONSTRAINT PK_defV PRIMARY KEY (nombre,idSuscripcion);
ALTER TABLE Usuarios 
	ADD CONSTRAINT PK_usuarios PRIMARY KEY (correo);
ALTER TABLE Solicitudes 
	ADD CONSTRAINT PK_solicitud PRIMARY KEY (id);
ALTER TABLE Solicita 
	ADD CONSTRAINT PK_solicita PRIMARY KEY (idSolicitud,idUsuario);
ALTER TABLE Planes 
	ADD CONSTRAINT PK_planes PRIMARY KEY (id);
ALTER TABLE Peliculas 
	ADD CONSTRAINT PK_peliculas PRIMARY KEY (id);