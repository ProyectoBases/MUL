/*COMO USUARIO QUIERO CONSULTAR TODAS LAS PELICULAS*/



SELECT PA_USUARIO.Consultar_multimedia(null) FROM DUAL;



/*LUEGO ESCOJO VER LA PRIMERA PELICULA QUE ENCUENTRO*/

CALL PA_ADMINISTRADOR.Adicionar_observa(0,0,null,1);


/*LUEGO QUIERO VER MI HISTORIAL DE VISTAS YA QUE TENGO GANAS DE VOLVER A VER UNA PELICULA LA CUAL NO RECUERDO EL NOMBRE*/

SELECT multimedias.nombre 
FROM multimedias, observa,plantillas 
WHERE multimedias.id = observa.idMultimedia AND observa.idPlantilla = plantillas.id AND plantillas.id = 0;


/*LUEGO QUIERO CONSULTAR LAS SERIES MAS VISTAS */

SELECT multimedias.nombre, COUNT(observa.idMultimedia),observa.idMultimedia
FROM multimedias,observa,series 
WHERE multimedias.id = series.id AND multimedias.id = observa.idMultimedia
GROUP BY multimedias.nombre,observa.idMultimedia
ORDER BY COUNT(observa.idMultimedia) DESC;

/*HE DECIDIDO VER LA PRIMERA QUE HE ENCONTRADO*/

INSERT INTO observa (idMultimedia,idPlantilla,vistaCompleta) VALUES (1587,0,1);

/*ANTES DE TERMINAR QUIERO VER UN DOCUMENTAL, YA QUE HE ESCUCHADO QUE SE APRENDE MUCHO VIENDOLOS*/

/*PARA ESTO HE DECIDIDO VER SOBRE DRAMA*/

/*ASÍ QUE PRIMERO LOS CONSULTARE PARA ESCOGER UNO*/

SELECT multimedias.nombre,multimedias.id
FROM multimedias,documentales
WHERE multimedias.id = documentales.id;

/*HE DECIDIDO OBSERVAR EL DOCUMENTAL CON EL NOMBRE FLACOS COLEGAS*/

INSERT INTO OBSERVA (idMultimedia,idPlantilla,vistaCompleta) VALUES (2020,0,1);

/*FIN*/