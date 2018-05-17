CREATE VIEW temporadasU
AS SELECT multimedias.nombre AS nombre, multimedias.calificacion, multimedias.duracion,  multimedias.sinopsis, multimedias.fechaEstreno, temporadas.numeroTemporada
FROM multimedias,series,temporadas 
WHERE multimedias.id = series.id AND series.id = temporadas.idSerie;
/

CREATE VIEW capitulosSeri
AS SELECT multimedias.nombre AS nombreMultimedia, multimedias.calificacion AS calificacion, multimedias.duracion AS duracionMultimedia,  multimedias.sinopsis AS sinopsis, multimedias.fechaEstreno AS fechaEstrenoMultimedias, temporadas.numeroTemporada AS numeroTemporada, capitulosSeries.nombre AS nombreCapitulo, capitulosSeries.duracion AS duracionCapitulo, capitulosSeries.descripcion AS descripcionCapitulo, capitulosSeries.fechaEstreno AS fechaEstrenoCapitulo, capitulosSeries.numeroCapitulo AS numeroCapitulo
FROM multimedias,series,temporadas,capitulosSeries 
WHERE multimedias.id = series.id AND series.id = temporadas.idSerie AND temporadas.id = capitulosSeries.idTemporada AND capitulosSeries.idSerie = temporadas.idSerie;
/
CREATE VIEW capitulosDoc
AS SELECT multimedias.nombre AS nombreMultimedia, multimedias.calificacion, multimedias.duracion,  multimedias.sinopsis, multimedias.fechaEstreno, capitulosDocumentales.nombre AS nombreCapitulo, capitulosDocumentales.duracion AS duracionCapitulo, capitulosDocumentales.descripcion AS descripcionCapitulo, capitulosDocumentales.fechaEstreno AS fechaEstrenoCapitulo, capitulosDocumentales.numeroCapitulo AS numeroCapitulo
FROM multimedias,documentales,capitulosDocumentales
WHERE multimedias.id = documentales.id AND documentales.id = capitulosDocumentales.idDocumental;
/
