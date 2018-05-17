/*INSERT INTO documentales(id,idMultimedia) VALUES(1,8);
INSERT INTO documentales(id,idMultimedia) VALUES(1,14);
INSERT INTO documentales(id,idMultimedia) VALUES(1,16);
INSERT INTO documentales(id,idMultimedia) VALUES(1,75);
INSERT INTO documentales(id,idMultimedia) VALUES(1,34);
INSERT INTO documentales(id,idMultimedia) VALUES(1,76);


INSERT INTO series(id,idMultimedia) VALUES(1,8);
INSERT INTO series(id,idMultimedia) VALUES(1,7);
INSERT INTO series(id,idMultimedia) VALUES(1,1);
INSERT INTO series(id,idMultimedia) VALUES(1,3);
INSERT INTO series(id,idMultimedia) VALUES(1,4);
INSERT INTO series(id,idMultimedia) VALUES(1,12);
INSERT INTO series(id,idMultimedia) VALUES(1,17);
INSERT INTO series(id,idMultimedia) VALUES(1,9);
INSERT INTO series(id,idMultimedia) VALUES(1,10);*/


INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES(3000,'juego de tronos',2,'0horas 50minutos',181,'Thirla edicion de bolsillo alcanzo el nmero uno en la lista de bestsellers del New York Times en julio de 2011',TO_DATE('20-5-1835','DD-MM-YYYY'));
INSERT INTO series (id) VALUES (3000);
INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES (0,3000,TO_DATE('20-5-1998','DD-MM-YYYY'),6);
INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES (0,3000,TO_DATE('20-5-1998','DD-MM-YYYY'),6);

SELECT multimedias.nombre AS nombreSerie,multimedias.fechaEstreno AS fechaEstrenoMultimedia, temporadas.fechaEstreno AS fechaEstrenoTemporadas, temporadas.numeroTemporada AS numeroTemporada
FROM temporadas,series,multimedias 
WHERE multimedias.id = series.id AND series.id = temporadas.idSerie AND temporadas.idSerie = 3000;
/*SELECT * FROM multimedias WHERE id = 3000;
DELETE FROM temporadas WHERE id = 1000;
DELETE FROM series WHERE id = 3000;
DELETE FROM multimedias WHERE id = 3000;
SELECT MAX(id) FROM temporadas;
SELECT COUNT(*) FROM series WHERE id = 3000;*/

INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (0,1000,3000,'EL PRIMER CAPITULO', '0 horas 45 minutos','este es el primer capitulo de la primera temporada',TO_DATE('20-5-1998','DD-MM-YYYY'),6);
INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (0,1000,3000,'EL SEGUNDO CAPITULO', '0 horas 45 minutos','este es el segundo capitulo de la primera temporada',TO_DATE('20-5-1998','DD-MM-YYYY'),6);

SELECT multimedias.nombre AS nombreSerie, multimedias.fechaEstreno AS fechaEstrenoMultimedia, temporadas.fechaEstreno AS fechaEstrenoTemporadas, temporadas.numeroTemporada AS numeroTemporada,capitulosSeries.nombre AS nombreCapitulo, capitulosSeries.fechaEstreno AS fechaEstrenoCapitulo, numeroCapitulo
FROM multimedias,series,temporadas,capitulosSeries
WHERE multimedias.id = series.id AND series.id = temporadas.idSerie AND temporadas.id = capitulosSeries.idTemporada AND temporadas.idSerie = capitulosSeries.idSerie AND capitulosSeries.idTemporada = 1000 AND capitulosSeries.idSerie = 3000;

/*----------------------------------------------------------------*/

INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES (3001,'leones',4,'2 horas 5 minutos',100,'este es un documental de leones',TO_DATE('5-10-2015','DD-MM-YYYY'));
INSERT INTO documentales (id) VALUES (3001);

INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (1000,3001,'primer capitulo, leones','1 hora 5 munutos','lñaksdjfalkñsdjf',TO_DATE('5-10-2016','DD-MM-YYYY'),6);
INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (1001,3001,'segundo capitulo, leones2','1 hora 5 munutos','lñaksdjfalkñsdjf',TO_DATE('5-10-2016','DD-MM-YYYY'),6);


SELECT multimedias.nombre AS nombreSerie,multimedias.fechaEstreno AS fechaEstrenoMultimedia,capitulosDocumentales.nombre AS nombreCapitulo, capitulosDocumentales.fechaEstreno AS fechaEstrenoCapitulo, capitulosDocumentales.numeroCapitulo
FROM multimedias,documentales,capitulosDocumentales
WHERE multimedias.id = documentales.id AND documentales.id = capitulosDocumentales.IDDOCUMENTAL AND capitulosDocumentales.IDDOCUMENTAL = 3001;


