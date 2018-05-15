

ALTER TABLE multimedias ADD CONSTRAINT FK_multimedia FOREIGN KEY (idDirector) REFERENCES directores(id);
ALTER TABLE categoriasMultimedias ADD CONSTRAINT FK_categoriasM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE categoriasMultimedias ADD CONSTRAINT FK_categoriasMu FOREIGN KEY (idCategoria) REFERENCES categorias(id);
ALTER TABLE actua ADD CONSTRAINT FK_actuaA FOREIGN KEY (idActor) REFERENCES actores(id);
ALTER TABLE actua ADD CONSTRAINT FK_actuaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE observa ADD CONSTRAINT FK_observaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
ALTER TABLE observa ADD CONSTRAINT FK_observaP FOREIGN KEY (idPlantilla) REFERENCES plantillas(id);
ALTER TABLE plantillas ADD CONSTRAINT FK_plantillas FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id);
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesU FOREIGN KEY (idUsuario) REFERENCES usuarios(correo);
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesP FOREIGN KEY (idPlan) REFERENCES planes(id);
ALTER TABLE definicionVistas ADD CONSTRAINT FK_definicionV FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id);
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaU FOREIGN KEY (idUsuario) REFERENCES usuarios(correo);
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaS FOREIGN KEY (idSolicitud) REFERENCES solicitudes(id);
ALTER TABLE series ADD CONSTRAINT FK_series FOREIGN KEY (id) REFERENCES multimedias(id);
ALTER TABLE documentales ADD CONSTRAINT FK_documentales FOREIGN KEY (id) REFERENCES multimedias(id);
ALTER TABLE peliculas ADD CONSTRAINT FK_peliculas FOREIGN KEY (id) REFERENCES multimedias(id);

ALTER TABLE temporadas ADD CONSTRAINT FK_temporadas FOREIGN KEY (idSerie) REFERENCES series(id);
ALTER TABLE temporadas ADD CONSTRAINT FK_infoTem FOREIGN KEY (id) REFERENCES infoTemporadas(idTemporadas);
ALTER TABLE capitulosSeries ADD CONSTRAINT FK_capitulosS FOREIGN KEY (idTemporadas) REFERENCES infoTemporadas(idTemporadas);
ALTER TABLE capitulosSeries ADD CONSTRAINT FK_infoCapS FOREIGN KEY (id) REFERENCES infoCapitulosSeries(id);

ALTER TABLE capitulosDocumentales ADD CONSTRAINT FK_documentaless FOREIGN KEY (idDocumental) REFERENCES documentales(id);
ALTER TABLE capitulosDocumentales ADD CONSTRAINT FK_infoCapDoc FOREIGN KEY (id) REFERENCES infoCapitulosDocumentales(id);

ALTER TABLE premiosActores ADD CONSTRAINT FK_premiosA FOREIGN KEY (id) REFERENCES premiosA(id);
ALTER TABLE premiosActores ADD CONSTRAINT FK_premiosAC FOREIGN KEY (idActor) REFERENCES actores(id);

ALTER TABLE premiosMultimedia ADD CONSTRAINT FK_premiosM FOREIGN KEY (id) REFERENCES premiosM(id);
ALTER TABLE premiosMultimedia ADD CONSTRAINT FK_premiosMU FOREIGN KEY (idMultimedia) REFERENCES multimedias(id);
