ALTER TABLE Actua ADD CONSTRAINT K_actua CHECK (personaje IN ('principal','secundario','reparto'));
ALTER TABLE Actores ADD CONSTRAINT K_sexoActor CHECK(sexo IN ('masculino','femenino'));
ALTER TABLE Observa ADD CONSTRAINT K_observa CHECK (vistaCompleta = 0 OR vistaCompleta = 1);
ALTER TABLE Suscripciones ADD CONSTRAINT K_suscrip CHECK (activa = 0 OR activa = 1);