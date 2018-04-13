ALTER TABLE categorias DROP CONSTRAINT FK_categoriasM;
ALTER TABLE categorias ADD CONSTRAINT FK_categoriasM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE premiosMultimedia DROP CONSTRAINT FK_premiosMUL;
ALTER TABLE premiosMultimedia ADD CONSTRAINT FK_premiosMUL FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE temporadas DROP CONSTRAINT FK_temporadas;
ALTER TABLE temporadas ADD CONSTRAINT FK_temporadas FOREIGN KEY (id,idSerie) REFERENCES series(id,idMultimedia) ON DELETE CASCADE;

ALTER TABLE capitulosSeries DROP CONSTRAINT FK_capitulosSE;
ALTER TABLE capitulosSeries ADD CONSTRAINT FK_capitulosSE FOREIGN KEY (id,idSerie) REFERENCES temporadas(id,idSerie) ON DELETE CASCADE;

ALTER TABLE capitulosDocumentales DROP CONSTRAINT FK_capitulosDoc;
ALTER TABLE capitulosDocumentales ADD CONSTRAINT FK_capitulosDoc FOREIGN KEY (id,idDocumental) REFERENCES documentales(id,idMultimedia) ON DELETE CASCADE;

ALTER TABLE actua DROP CONSTRAINT FK_actuaA;
ALTER TABLE actua ADD CONSTRAINT FK_actuaA FOREIGN KEY (idActor) REFERENCES actores(id) ON DELETE CASCADE;

ALTER TABLE actua DROP CONSTRAINT FK_actuaM;
ALTER TABLE actua ADD CONSTRAINT FK_actuaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE premiosActores DROP CONSTRAINT FK_premiosActo;
ALTER TABLE premiosActores ADD CONSTRAINT FK_premiosActo FOREIGN KEY (idActor) REFERENCES actores(id) ON DELETE CASCADE;

ALTER TABLE observa DROP CONSTRAINT FK_observaM;
ALTER TABLE observa ADD CONSTRAINT FK_observaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE observa DROP CONSTRAINT FK_observaP;
ALTER TABLE observa ADD CONSTRAINT FK_observaP FOREIGN KEY (idPlantilla) REFERENCES plantillas(id) ON DELETE CASCADE;

ALTER TABLE plantillas DROP CONSTRAINT FK_plantillas;
ALTER TABLE plantillas ADD CONSTRAINT FK_plantillas FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id) ON DELETE CASCADE;

ALTER TABLE suscripciones DROP CONSTRAINT FK_suscripcionesU;
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesU FOREIGN KEY (idUsuario) REFERENCES usuarios(id) ON DELETE CASCADE;

ALTER TABLE definicionVistas DROP CONSTRAINT FK_definicionV;
ALTER TABLE definicionVistas ADD CONSTRAINT FK_definicionV FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id) ON DELETE CASCADE;

ALTER TABLE solicita DROP CONSTRAINT FK_solicitaU;
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaU FOREIGN KEY (idUsuario) REFERENCES usuarios(id) ON DELETE CASCADE;

ALTER TABLE solicita DROP CONSTRAINT FK_solicitaS;
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaS FOREIGN KEY (idSolicitud) REFERENCES solicitudes(id) ON DELETE CASCADE;

ALTER TABLE series DROP CONSTRAINT FK_series;
ALTER TABLE series ADD CONSTRAINT FK_series FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE documentales DROP CONSTRAINT FK_documentales;
ALTER TABLE documentales ADD CONSTRAINT FK_documentales FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE peliculas DROP CONSTRAINT FK_peliculas;
ALTER TABLE peliculas ADD CONSTRAINT FK_peliculas FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;