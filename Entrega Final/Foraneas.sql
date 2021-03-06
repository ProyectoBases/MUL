ALTER TABLE Multimedias ADD CONSTRAINT FK_multimedia 
	FOREIGN KEY (idDirector) REFERENCES Directores(id);

ALTER TABLE CategoriasMultimedias ADD CONSTRAINT FK_categoriasM2 
	FOREIGN KEY (idMultimedia) REFERENCES Multimedias(id);
	
ALTER TABLE CategoriasMultimedias ADD CONSTRAINT FK_categoriasM1 
	FOREIGN KEY (idCategoria) REFERENCES Categorias(id);
	
ALTER TABLE PremiosMultimedia ADD CONSTRAINT FK_premiosM
	FOREIGN KEY (idMultimedia) REFERENCES Multimedias(id);

ALTER TABLE Series ADD CONSTRAINT FK_series 
	FOREIGN KEY (id) REFERENCES Multimedias(id);

ALTER TABLE Temporadas ADD CONSTRAINT FK_temporada 
	FOREIGN KEY (idSerie) REFERENCES Series(id);

ALTER TABLE CapitulosSeries ADD CONSTRAINT FK_capSeries
	FOREIGN KEY (idTemporada,idSerie) REFERENCES Temporadas(id,idSerie);
	
ALTER TABLE Documentales ADD CONSTRAINT FK_documentales 
	FOREIGN KEY (id) REFERENCES Multimedias(id);

ALTER TABLE CapitulosDocumentales ADD CONSTRAINT FK_capDoc
	FOREIGN KEY (idDocumental) REFERENCES Documentales(id);
	
ALTER TABLE Actua ADD CONSTRAINT FK_actua1
	FOREIGN KEY (idMultimedia) REFERENCES Multimedias(id);

ALTER TABLE Actua ADD CONSTRAINT FK_actua2
	FOREIGN KEY (idActor) REFERENCES Actores(id);
	
ALTER TABLE PremiosActores ADD CONSTRAINT FK_premA
	FOREIGN KEY (idActor) REFERENCES Actores(id);
	
ALTER TABLE Observa ADD CONSTRAINT FK_observa1 
	FOREIGN KEY (idMultimedia) REFERENCES Multimedias(id);

ALTER TABLE Observa ADD CONSTRAINT FK_observa2 
	FOREIGN KEY (idPlantilla) REFERENCES Plantillas(id);
	
ALTER TABLE Plantillas ADD CONSTRAINT FK_plantilla
	FOREIGN KEY (idSuscripcion) REFERENCES Suscripciones(id);
	
ALTER TABLE Suscripciones ADD CONSTRAINT FK_suscrip1
	FOREIGN KEY (idUsuario) REFERENCES Usuarios(correo);
	
ALTER TABLE Suscripciones ADD CONSTRAINT FK_suscrip2 
	FOREIGN KEY (idPlan) REFERENCES Planes(id);
	
ALTER TABLE DefinicionVistas ADD CONSTRAINT FK_defVistas
	FOREIGN KEY (idPlan) REFERENCES Planes(id);
	
ALTER TABLE Solicita ADD CONSTRAINT FK_solicita1
	FOREIGN KEY (idSolicitud) REFERENCES Solicitudes(id);
	
ALTER TABLE Solicita ADD CONSTRAINT FK_solicita2
	FOREIGN KEY (idUsuario) REFERENCES Usuarios(correo);
	
ALTER TABLE Peliculas ADD CONSTRAINT FK_peliculas 
	FOREIGN KEY (id) REFERENCES Multimedias(id);
	