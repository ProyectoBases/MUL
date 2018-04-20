INSERT INTO documentales(id,idMultimedia) VALUES(1,8);
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
INSERT INTO series(id,idMultimedia) VALUES(1,10);






SELECT * FROM multimedias WHERE idDirector = 72;
DELETE FROM directores WHERE id = 72;
SELECT * FROM multimedias WHERE idDirector IS NULL;

SELECT * FROM suscripciones WHERE idPlan = 0;
DELETE FROM planes WHERE id = 0;
SELECT * FROM suscripciones WHERE idPlan IS NULL;