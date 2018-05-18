SELECT * FROM CategoriasMultimedias WHERE idMultimedia = 100; 
DELETE FROM Multimedias WHERE id = 100;

SELECT * FROM CategoriasMultimedias WHERE idCategoria = 6;
DELETE FROM Categorias WHERE id = 6;

SELECT * FROM PremiosMultimedia WHERE idMultimedia = 40;
DELETE FROM Multimedias WHERE id = 40;

SELECT *  FROM Series WHERE id = 1017;
DELETE FROM Multimedias WHERE id = 1017;

SELECT * FROM Temporadas WHERE idSerie = 1020;
DELETE FROM Series WHERE id = 1020;

SELECT * FROM CapitulosSeries WHERE idTemporada = 535  AND idSerie = 1010;
DELETE FROM Temporadas WHERE id = 535 AND idSerie = 1010;

SELECT * FROM Documentales WHERE id = 2100;
DELETE FROM Multimedias WHERE id = 2100;

SELECT * FROM CapitulosDocumentales WHERE idDocumental = 2200;
DELETE FROM Documentales WHERE id = 2200;

SELECT * FROM Actua WHERE idActor = 474;
DELETE FROM Actores WHERE id = 474;

SELECT * FROM Actua WHERE idMultimedia = 1942;
DELETE FROM Multimedias WHERE id = 1942;

SELECT * FROM PremiosActores WHERE idActor = 766;
DELETE FROM Actores WHERE id = 766;

SELECT * FROM Observa WHERE idMultimedia = 1539;
DELETE FROM Multimedias WHERE id = 1539;

SELECT * FROM Observa WHERE idPlantilla = 571;
DELETE FROM Plantillas WHERE id = 571;

SELECT * FROM Solicita WHERE idSolicitud = 144;
DELETE FROM Solicitudes WHERE id = 144;

SELECT * FROM Peliculas WHERE id = 177;
DELETE FROM Multimedias WHERE id = 177;




SELECT * FROM CategoriasMultimedias WHERE idMultimedia = 100; 
SELECT * FROM CategoriasMultimedias WHERE idCategoria = 6;
SELECT * FROM PremiosMultimedia WHERE idMultimedia = 40;
SELECT *  FROM Series WHERE id = 1017;
SELECT * FROM Temporadas WHERE idSerie = 1020;
SELECT * FROM CapitulosSeries WHERE idTemporada = 535  AND idSerie = 1010;
SELECT * FROM Documentales WHERE id = 2100;
SELECT * FROM CapitulosDocumentales WHERE idDocumental = 2200;
SELECT * FROM Actua WHERE idActor = 474;
SELECT * FROM Actua WHERE idMultimedia = 1942;
SELECT * FROM PremiosActores WHERE idActor = 766;
SELECT * FROM Observa WHERE idMultimedia = 1539;
SELECT * FROM Observa WHERE idPlantilla = 571;
SELECT * FROM Solicita WHERE idSolicitud = 144;
SELECT * FROM Peliculas WHERE id = 177;