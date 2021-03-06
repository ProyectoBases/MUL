ALTER TABLE multimedias ADD CONSTRAINT FK_multimedia FOREIGN KEY (idDirector) REFERENCES directores(id);
ALTER TABLE categorias ADD CONSTRAINT FK_categoriasM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE premiosMultimedia ADD CONSTRAINT FK_premiosMUL FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE temporadas ADD CONSTRAINT FK_temporadas FOREIGN KEY (id,idSerie) REFERENCES series(id,idMultimedia);
ALTER TABLE capitulosSeries ADD CONSTRAINT FK_capitulosSE FOREIGN KEY (id,idSerie) REFERENCES temporadas(id,idSerie);
ALTER TABLE capitulosDocumentales ADD CONSTRAINT FK_capitulosDoc FOREIGN KEY (id,idDocumental) REFERENCES documentales(id,idMultimedia);
ALTER TABLE actua ADD CONSTRAINT FK_actuaA FOREIGN KEY (idActor) REFERENCES actores(id);
ALTER TABLE actua ADD CONSTRAINT FK_actuaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE premiosActores ADD CONSTRAINT FK_premiosActo FOREIGN KEY (idActor) REFERENCES actores(id);
ALTER TABLE observa ADD CONSTRAINT FK_observaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE observa ADD CONSTRAINT FK_observaP FOREIGN KEY (idPlantilla) REFERENCES plantillas(id);
ALTER TABLE plantillas ADD CONSTRAINT FK_plantillas FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id);
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesU FOREIGN KEY (idUsuario) REFERENCES usuarios(id);
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesP FOREIGN KEY (idPlan) REFERENCES planes(id);
ALTER TABLE definicionVistas ADD CONSTRAINT FK_definicionV FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id);
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaU FOREIGN KEY (idUsuario) REFERENCES usuarios(id);
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaS FOREIGN KEY (idSolicitud) REFERENCES solicitudes(id);
ALTER TABLE series ADD CONSTRAINT FK_series FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE documentales ADD CONSTRAINT FK_documentales FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE peliculas ADD CONSTRAINT FK_peliculas FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);