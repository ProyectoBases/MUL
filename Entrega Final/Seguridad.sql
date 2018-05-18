CREATE ROLE administrador;
CREATE ROLE usuario;


GRANT SELECT,UPDATE,INSERT ON multimedias TO administrador;
GRANT SELECT,UPDATE,INSERT ON categorias TO administrador;
GRANT SELECT,UPDATE,INSERT ON premiosMultimedia TO administrador;
GRANT SELECT,UPDATE,INSERT ON categoriasMultimedias TO administrador;
GRANT SELECT,UPDATE,INSERT ON peliculas TO administrador;
GRANT SELECT,UPDATE,INSERT ON observa TO administrador;
GRANT SELECT,UPDATE,INSERT ON series TO administrador;
GRANT SELECT,UPDATE,INSERT ON documentales TO administrador;
GRANT SELECT,UPDATE,INSERT ON temporadas TO administrador;
GRANT SELECT,UPDATE,INSERT ON capitulosSeries TO administrador;
GRANT SELECT,UPDATE,INSERT ON capitulosDocumentales TO administrador;
GRANT SELECT,UPDATE,INSERT ON premiosActores TO administrador;
GRANT SELECT,UPDATE,INSERT ON actores TO administrador;
GRANT SELECT,UPDATE,INSERT ON actua TO administrador;
GRANT SELECT,UPDATE,INSERT ON directores TO administrador;
GRANT SELECT,UPDATE,INSERT ON suscripciones TO administrador;
GRANT SELECT,UPDATE,INSERT ON plantillas TO administrador;
GRANT SELECT,UPDATE,INSERT ON definicionVistas TO administrador;
GRANT SELECT,UPDATE,INSERT ON usuarios TO administrador;
GRANT SELECT,UPDATE,INSERT ON solicita TO administrador;
GRANT SELECT,UPDATE,INSERT ON solicitudes TO administrador;
GRANT SELECT,UPDATE,INSERT ON planes TO administrador;


GRANT DELETE ON multimedias TO administrador;
GRANT DELETE ON categorias TO administrador;
GRANT DELETE ON premiosMultimedia TO administrador;
GRANT DELETE ON categoriasMultimedias TO administrador;
GRANT DELETE ON peliculas TO administrador;
GRANT DELETE ON observa TO administrador;
GRANT DELETE ON series TO administrador;
GRANT DELETE ON documentales TO administrador;
GRANT DELETE ON temporadas TO administrador;
GRANT DELETE ON capitulosSeries TO administrador;
GRANT DELETE ON capitulosDocumentales TO administrador;
GRANT DELETE ON premiosActores TO administrador;
GRANT DELETE ON actores TO administrador;
GRANT DELETE ON actua TO administrador;
GRANT DELETE ON suscripciones TO administrador;
GRANT DELETE ON plantillas TO administrador;
GRANT DELETE ON definicionVistas TO administrador;
GRANT DELETE ON usuarios TO administrador;
GRANT DELETE ON solicita TO administrador;
GRANT DELETE ON solicitudes TO administrador;
GRANT DELETE ON planes TO administrador;



GRANT SELECT ON multimedias TO usuario;
GRANT SELECT ON categorias TO usuario;
GRANT SELECT ON premiosMultimedia TO usuario;
GRANT SELECT ON categoriasMultimedias TO usuario;
GRANT SELECT ON peliculas TO usuario;
GRANT SELECT ON observa TO usuario;
GRANT SELECT ON series TO usuario;
GRANT SELECT ON documentales TO usuario;
GRANT SELECT ON temporadas TO usuario;
GRANT SELECT ON capitulosSeries TO usuario;
GRANT SELECT ON capitulosDocumentales TO usuario;
GRANT SELECT ON premiosActores TO usuario;
GRANT SELECT ON actores TO usuario;
GRANT SELECT ON actua TO usuario;
GRANT SELECT ON directores TO usuario;
GRANT SELECT ON suscripciones TO usuario;
GRANT SELECT ON plantillas TO usuario;
GRANT SELECT ON definicionVistas TO usuario;
GRANT SELECT ON usuarios TO usuario;
GRANT SELECT ON solicita TO usuario;
GRANT SELECT ON solicitudes TO usuario;
GRANT SELECT ON planes TO usuario;