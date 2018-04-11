ALTER TABLE multimedias ADD CONSTRAINT K_multimedia CHECK (calificacion>=0 AND calificacion<=5);
ALTER TABLE directores ADD CONSTRAINT K_directores CHECK (nombre NOT LIKE '%0%' AND nombre NOT LIKE '%1%' AND nombre NOT LIKE '%2%' AND nombre NOT LIKE '%3%' AND nombre NOT LIKE '%4%' AND nombre NOT LIKE '%5%' AND nombre NOT LIKE '%6%' AND nombre NOT LIKE '%7%' AND nombre NOT LIKE '%8%' AND nombre NOT LIKE '%9%');
ALTER TABLE actua ADD CONSTRAINT K_actua CHECK (personaje IN ('principal','secundario','reparto'));
ALTER TABLE actores ADD CONSTRAINT K_actores CHECK (nombre NOT LIKE '%0%' AND nombre NOT LIKE '%1%' AND nombre NOT LIKE '%2%' AND nombre NOT LIKE '%3%' AND nombre NOT LIKE '%4%' AND nombre NOT LIKE '%5%' AND nombre NOT LIKE '%6%' AND nombre NOT LIKE '%7%' AND nombre NOT LIKE '%8%' AND nombre NOT LIKE '%9%');
ALTER TABLE directores ADD CONSTRAINT K_directoresA CHECK (apellido NOT LIKE '%0%' AND apellido NOT LIKE '%1%' AND apellido NOT LIKE '%2%' AND apellido NOT LIKE '%3%' AND apellido NOT LIKE '%4%' AND apellido NOT LIKE '%5%' AND apellido NOT LIKE '%6%' AND apellido NOT LIKE '%7%' AND apellido NOT LIKE '%8%' AND apellido NOT LIKE '%9%');
ALTER TABLE actores ADD CONSTRAINT K_sexoActor CHECK(sexo IN ('masculino','femenino'));
ALTER TABLE observa ADD CONSTRAINT K_observa CHECK (vistaCompleta = 0 OR vistaCompleta = 1);
ALTER TABLE usuarios ADD CONSTRAINT K_usuarios CHECK (correo LIKE '%@%' AND correo LIKE '%.%');
