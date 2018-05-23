ALTER TABLE Multimedias ADD CONSTRAINT K_multimedia CHECK (calificacion >= 0 AND calificacion <= 5);
ALTER TABLE Directores ADD CONSTRAINT K_director CHECK (calificacion >= 0 AND calificacion <= 5);
ALTER TABLE Usuarios ADD CONSTRAINT K_usuarios CHECK (correo LIKE '%@%' AND correo LIKE '%.%');
ALTER TABLE Multimedias ADD CONSTRAINT K_multimedia2 CHECK (duracion LIKE '%horas%minutos');
ALTER TABLE CapitulosSeries ADD CONSTRAINT K_capseries CHECK (duracion LIKE '%horas%minutos');
ALTER TABLE CapitulosDocumentales ADD CONSTRAINT K_capdocu CHECK (duracion LIKE '%horas%minutos');
ALTER TABLE Planes ADD CONSTRAINT K_planes CHECK (costo > 0);