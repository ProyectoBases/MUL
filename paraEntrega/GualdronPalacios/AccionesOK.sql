SELECT * FROM multimedias WHERE idDirector = 72; 
DELETE FROM directores WHERE id = 72;

SELECT * FROM categorias WHERE idMultimedia = 109; 
DELETE FROM multimedias WHERE id = 109;

SELECT * FROM premiosMultimedia WHERE idMultimedia = 28;
DELETE FROM multimedias WHERE id = 28;

SELECT * FROM temporadas WHERE idSerie = 75;
DELETE FROM series WHERE idMultimedia = 75;

SELECT * FROM capitulosSeries WHERE idSerie = 10;
DELETE FROM temporadas WHERE idSerie = 10;

SELECT * FROM capitulosDocumentales WHERE idDocumental = 16;
DELETE FROM documentales WHERE idMultimedia = 16;

SELECT * FROM actua WHERE idActor = 474;
DELETE FROM actores WHERE id = 474;

SELECT * FROM actua WHERE idMultimedia = 175;
DELETE FROM multimedias WHERE id = 175;

SELECT * FROM premiosActores WHERE idActor = 766;
DELETE FROM actores WHERE id = 766;

SELECT * FROM observa WHERE idMultimedia = 57;
DELETE FROM multimedias WHERE id = 57;

SELECT * FROM observa WHERE idPlantilla = 930;
DELETE FROM plantillas WHERE id = 930;

SELECT * FROM plantillas WHERE idSuscripcion = 379;
DELETE FROM suscripciones WHERE id = 379;

SELECT * FROM suscripciones WHERE idUsuario = 648;
DELETE FROM usuarios WHERE id = 648;

SELECT * FROM suscripciones WHERE idPlan = 0;
DELETE FROM planes WHERE id = 0;

SELECT * FROM solicita WHERE idUsuario = 289;
DELETE FROM usuarios WHERE id = 289;

SELECT * FROM solicita WHERE idSolicitud = 144;
DELETE FROM solicitudes WHERE id = 144;

SELECT * FROM series WHERE idMultimedia = 5;
DELETE FROM multimedias WHERE id = 5;

SELECT * FROM documentales WHERE idMultimedia = 99;
DELETE FROM multimedias WHERE id = 99;

SELECT * FROM peliculas WHERE idMultimedia = 177;
DELETE FROM multimedias WHERE id = 177;

SELECT * FROM multimedias WHERE idDirector = 72; 
SELECT * FROM categorias WHERE idMultimedia = 109;
SELECT * FROM premiosMultimedia WHERE idMultimedia = 28;
SELECT * FROM capitulosSeries WHERE idSerie = 10;
SELECT * FROM capitulosDocumentales WHERE idDocumental = 16;
SELECT * FROM actua WHERE idActor = 474;
SELECT * FROM actua WHERE idMultimedia = 175;
SELECT * FROM premiosActores WHERE idActor = 766;
SELECT * FROM observa WHERE idMultimedia = 57;
SELECT * FROM observa WHERE idPlantilla = 930;
SELECT * FROM plantillas WHERE idSuscripcion = 379;
SELECT * FROM suscripciones WHERE idUsuario = 648;
SELECT * FROM suscripciones WHERE idPlan = 0;
SELECT * FROM solicita WHERE idUsuario = 289;
SELECT * FROM solicita WHERE idSolicitud = 144;
SELECT * FROM series WHERE idMultimedia = 5;
SELECT * FROM documentales WHERE idMultimedia = 99;
SELECT * FROM peliculas WHERE idMultimedia = 177;