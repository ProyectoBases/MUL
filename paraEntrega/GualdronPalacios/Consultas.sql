/*Soy un usuario y me gustaria saber las peliculas dirigidas por Mike Newell, para poder ver mas del estilo de este director*/
SELECT multimedias.nombre, categorias.nombre, multimedias.calificacion, sinopsis, premiosMultimedia.nombre
FROM multimedias, peliculas, directores, premiosMultimedia, categorias
WHERE multimedias.id = peliculas.idMultimedia AND multimedias.idDirector = directores.id AND premiosMultimedia.idMultimedia = multimedias.id 
        AND categorias.idMultimedia = multimedias.id AND directores.nombre = 'Mike' AND directores.apellido = 'Newell'
GROUP BY multimedias.nombre, categorias.nombre, multimedias.calificacion, sinopsis, premiosMultimedia.nombre;

/*Soy el director Steven Spielberg y quiero un listado de los actores principales con los que he trabajado en mis mejores producciones, para tenerlos en cuenta en mis proximos proyectos*/
SELECT actores.nombre AS nombre, actores.apellido AS apellido, sexo, multimedias.nombre AS nombre_produccion, multimedias.calificacion AS calificacion_produccion
FROM actores, actua, multimedias, directores
WHERE actores.id = actua.idActor AND multimedias.id = actua.idMultimedia AND directores.id = multimedias.idDirector AND directores.nombre = 'Steven' AND directores.apellido = 'Spielberg' AND actua.personaje = 'principal'
ORDER BY multimedias.calificacion DESC;

/*Como productor quiero consultar los actores principales de las peliculas con mejor calificacion de la categoria de comedias para saber que opciones tengo de protagonistas
    en mi proxima super produccion*/
SELECT multimedias.nombre, sinopsis, calificacion, actores.nombre, actores.apellido, actores.sexo, categorias.nombre
FROM peliculas, multimedias, actua, actores, categorias
WHERE peliculas.idMultimedia = multimedias.id AND multimedias.id = actua.idMultimedia AND actores.id = actua.idActor AND categorias.idMultimedia = multimedias.id
        AND personaje = 'principal' AND calificacion >= 4 AND categorias.nombre = ' Comedies'
GROUP BY multimedias.nombre, sinopsis, calificacion, actores.nombre, apellido, sexo, categorias.nombre;