ALTER TABLE Multimedias ADD CONSTRAINT K_multimedia CHECK (calificacion >= 0 AND calificacion <= 5);
ALTER TABLE Directores ADD CONSTRAINT K_director CHECK (calificacion >= 0 AND calificacion <= 5);
ALTER TABLE Actores ADD CONSTRAINT K_actores CHECK (fechaNacimiento < fechaFallecimiento);
ALTER TABLE Usuarios ADD CONSTRAINT K_usuarios CHECK (correo LIKE '%@%' AND correo LIKE '%.%');