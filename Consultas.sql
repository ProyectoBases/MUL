/*Consultar peliculas dirigidas por una persona específica*/
SELECT multimedia.nombre, categoria, multimedia.calificacion, sinopsis, premiosMultimedia.nombre
FROM multimedias, peliculas, directores
WHERE multimedias.id = peliculas.idMultimedia AND multimedias.idDirector = directores.id AND directores.nombre = 'Alejandro' AND directores.apellido = 'Gonzalez'

/*Consultar las precuelas y secuelas de una pelicula*/
