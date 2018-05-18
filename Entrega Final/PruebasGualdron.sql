/*COMO USUARIO QUIERO CONSULTAR TODAS LAS PELICULAS QUE PERTENEZCAN A LA CATEGORIA MIEDO*/

SELECT multimedias.nombre FROM multimedias,peliculas WHERE multimedias.id = peliculas.id;

/*LUEGO ESCOJO VER LA PRIMERA PELICULA QUE ENCUENTRO*/

INSERT INTO observa (idMultimedia,idPlantilla,vistaCompleta) VALUES (4,60,1);