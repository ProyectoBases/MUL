/*Consultar peliculas dirigidas por una persona específica*/
SELECT multimedias.nombre, categorias.nombre, multimedias.calificacion, sinopsis, premiosMultimedia.nombre
FROM multimedias, peliculas, directores, premiosMultimedia, categorias
WHERE multimedias.id = peliculas.idMultimedia AND multimedias.idDirector = directores.id AND premiosMultimedia.idMultimedia = multimedias.id AND categorias.idMultimedia = multimedias.id
        AND directores.nombre = 'Alejandro' AND directores.apellido = 'Gonzalez'    ####cambiar nombre del director

/*Consultar las precuelas y secuelas de una pelicula*/

/*Consultar los actores principales de las peliculas con mejor calificacion de cierta categoria*/
SELECT multimedias.nombre, sinopsis, calificacion, actores.nombre, apellido, sexo
FROM peliculas, multimedias, actua, actores
WHERE peliculas.idMultimedia = multimedias.id AND multimedias.id = actua.idMultimedia AND actores.id = actua.idActor AND personaje = 'principal'