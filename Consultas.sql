/*Consultar peliculas dirigidas por una persona especifica*/
SELECT multimedias.nombre, categorias.nombre, multimedias.calificacion, sinopsis, premiosMultimedia.nombre
FROM multimedias, peliculas, directores, premiosMultimedia, categorias
WHERE multimedias.id = peliculas.idMultimedia AND multimedias.idDirector = directores.id AND premiosMultimedia.idMultimedia = multimedias.id AND categorias.idMultimedia = multimedias.id
        AND directores.nombre = 'Mike' AND directores.apellido = 'Newell'
GROUP BY multimedias.nombre, categorias.nombre, multimedias.calificacion, sinopsis, premiosMultimedia.nombre;

/*Consultar los actores principales de las peliculas con mejor calificacion de cierta categoria*/
SELECT multimedias.nombre, sinopsis, calificacion, actores.nombre, apellido, sexo
FROM peliculas, multimedias, actua, actores
WHERE peliculas.idMultimedia = multimedias.id AND multimedias.id = actua.idMultimedia AND actores.id = actua.idActor AND personaje = 'principal' AND calificacion >= 4
GROUP BY multimedias.nombre, sinopsis, calificacion, actores.nombre, apellido, sexo;