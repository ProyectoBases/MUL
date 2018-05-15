---DIRECTORES---
INSERT INTO Directores(id,nombre,apellido,calificacion) VALUES ();

---MULTIMEDIAS---
INSERT INTO Multimedias(id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES ();

---INFO_PREMIOS_MULTIMEDIA---
INSERT INTO InfoPremiosMultimedia(id,nombre,categoriaPremio) VALUES ();

---PREMIOS_MULTIMEDIA---
INSERT INTO PremiosMultimedia(idPremio,idMultimedia) VALUES ();

---CATEGORIAS---
INSERT INTO Categorias(id,nombre) VALUES ();

---CATEGORIAS_MULTIMEDIAS---
INSERT INTO CategoriasMultimedias(idCategoria,idMultimedia) VALUES ();

---PELICULAS---
INSERT INTO Peliculas(id) VALUES ();

---SERIES---
INSERT INTO Series(id) VALUES ();

---TEMPORADAS---
INSERT INTO Temporadas(id,idSerie) VALUES ();

---INFO_TEMPORADAS---
INSERT INTO InfoTemporadas(idTemporada,fechaEstreno,numeroTemporada) VALUES ();

---CAPITULOS_SERIES---
INSERT INTO CapitulosSeries(id,idTemporada) VALUES ();

---INFO_CAPITULOS_SERIES---
INSERT INTO InfoCapitulosSeries(idCapitulo,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES ();

---DOCUMENTALES---
INSERT INTO Documentales(id) VALUES ();

---CAPITULOS_DOCUMENTALES---
INSERT INTO CapitulosDocumentales(id,idDocumental) VALUES ();

---INFO_CAPITULOS_DOCUMENTALES---
INSERT INTO InfoCapitulosDocumentales(idCapitulo,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES ();

---ACTORES---
INSERT INTO Actores(id,nombre,apellido,fechaNacimiento,fechaFallecimiento,sexo) VALUES ();

---ACTUA---
INSERT INTO Actua(idMultimedia,idActor,personaje) VALUES ();

---INFO_PREMIOS_ACTORES---
INSERT INTO InfoPremiosActores(id,nombre,categoriaPremio) VALUES ();

---PREMIOS_ACTORES---
INSERT INTO PremiosActores(idPremio,idActor) VALUES ();

---USUARIOS---
INSERT INTO Usuarios(correo,nombre,fechaNacimiento) VALUES ();

---SOLICITUDES---
INSERT INTO Solicitudes(id,titulo) VALUES ();

---SOLICITA---
INSERT INTO Solicita(idSolicitud,idUsuario) VALUES ();

---PLANES---
INSERT INTO Planes(id,nombre) VALUES ();

---SUSCRIPCIONES---
INSERT INTO Suscripciones(id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES ();

---DEFINICION_VISTAS---
INSERT INTO DefinicionVistas(nombre,idSuscripcion) VALUES ();

---PLANTILLAS---
INSERT INTO Plantillas(id,fechaNacimiento,nombre,idSuscripcion) VALUES ();

---OBSERVA---
INSERT INTO Observa(idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES ();