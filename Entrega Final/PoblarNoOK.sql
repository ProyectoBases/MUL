INSERT INTO directores (id,nombre,apellido,calificacion) VALUES(0,'camilo','lewandowsky',200);
INSERT INTO directores (id,nombre,apellido,calificacion) VALUES('pablo','cabello',2);

INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES(23,'campesinos colegas','0horas 52minutos',145,'Antes de meterse en el mundo de la comedia estuvo trabajando en una compania telefonica de Los ?ngeles. Su familia le pidio que siguiera en su puesto para poder mantenerse economicamente sin embargo decidio dar un paso adelante a pesar de los riesgos que acarrearia su mala situacion economica puesto que acabo perdiendo su casa y el coche',TO_DATE('17-1-1860','DD-MM-YYYY'));
INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES(3000,'la la land',2,'esta pelicula dura aproximadamente 2 horas',145,'Antes de meterse en el mundo de la comedia estuvo trabajando en una compania telefonica de Los ?ngeles. Su familia le pidio que siguiera en su puesto para poder mantenerse economicamente sin embargo decidio dar un paso adelante a pesar de los riesgos que acarrearia su mala situacion economica puesto que acabo perdiendo su casa y el coche',TO_DATE('17-1-1860','DD-MM-YYYY'));

INSERT INTO premiosMultimedia (id,nombre,categoriaPremio,idMultimedia) VALUES('hola','premios venezuela','mejor fotografia',2209);
INSERT INTO premiosMultimedia (id,nombre,categoriaPremio,idMultimedia) VALUES(1000,'smmncbdsfndskjfdskjckdsckdjnsdfsdfsdfsdfdsfdscsdcfsac r f  fd sfsdf efwe ef efesfsdckjdsnckjsndckjnsdkjcndskjcnds,msdnf,sdmnfs,mdnfsddbfmndsfbsmdnbfmsdbfsdmnfsdfsdnfsdmfdsmfsdbfmsdfsdfsdfsdfsdfsdjkncsdkfsdfsdfsdfsdfsdfsdfsdjnckdsjcnsdkcsdkdcsdjn','mejor fotografia',2209);
INSERT INTO premiosMultimedia (id,nombre,categoriaPremio,idMultimedia) VALUES(1000,'premios venezuela','mejor fotografia','idMul');

INSERT INTO categorias (id,nombre) VALUES(0);
INSERT INTO categorias (id,nombre) VALUES(0,'accioncomediaterrorsudfdfgfdgdfgdfspensotragediaholamamicomoestaskjsdfksjdfsdcvreidnghejcndkdsnnkdfjkfndfwenkfj');
INSERT INTO categorias (id,nombre) VALUES('dscds','accion');

INSERT INTO categoriasMultimedias (idCategoria,idMultimedia) VALUES ('dfdfd',1002);
INSERT INTO categoriasMultimedias (idCategoria,idMultimedia) VALUES (6,'ohohoh');

INSERT INTO peliculas (id) VALUES(0);
INSERT INTO peliculas (id) VALUES(3400);
INSERT INTO peliculas (id) VALUES('je');

INSERT INTO series (id) VALUES('');
INSERT INTO series (id) VALUES(5000);
INSERT INTO series (id) VALUES(1000);

INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES(1000,'1758ADSA',TO_DATE('23-4-1784','DD-MM-YYYY'),4);
INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES('dfs',1758,TO_DATE('23-4-1784','DD-MM-YYYY'),4);
INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES(0,1758,4);
INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES(0,1758,TO_DATE('23-4-1784','DD-MM-YYYY'),'4SA');

INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES ('999SD',999,1046,'amigos','1horas 42minutos','Thirla edici?n de bolsillo alcanz?el n?mero uno en la lista de bestsellers del New York Times en julio de 2011',TO_DATE('4-7-1728','DD-MM-YYYY'),8);
INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (1000,'999SAD',1046,'amigos','1horas 42minutos','Thirla edici?n de bolsillo alcanz?el n?mero uno en la lista de bestsellers del New York Times en julio de 2011',TO_DATE('4-7-1728','DD-MM-YYYY'),8);
INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (1000,999,'1046ASD','amigos','1horas 42minutos','Thirla edici?n de bolsillo alcanz?el n?mero uno en la lista de bestsellers del New York Times en julio de 2011',TO_DATE('4-7-1728','DD-MM-YYYY'),8);
INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES (1000,999,1046,,'1horas 42minutos','Thirla edici?n de bolsillo alcanz?el n?mero uno en la lista de bestsellers del New York Times en julio de 2011',TO_DATE('4-7-1728','DD-MM-YYYY'),8);

INSERT INTO documentales VALUES();
INSERT INTO documentales VALUES('2000SADA');
INSERT INTO documentales VALUES(3000,'la la land');
INSERT INTO documentales VALUES(50000);

INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES(1000,'2000SADAS','campesinos peques','2horas 22minutos','En  convirti?en un especial de televisi?n brit?nica en 2004. Desde 2003 hasta 2004, Martin escribi?para Late Night with Conan O Brien. En 2004, Martin ten?a su propio Comedy Central Presents Stand-up especial. Su especial se divide en tres partes. En la primera, se realiza en forma tradicional stand-up',TO_DATE('16-11-1728','DD-MM-YYYY'),0);
INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES('0SADAS',2000,'campesinos peques','2horas 22minutos','En  convirti?en un especial de televisi?n brit?nica en 2004. Desde 2003 hasta 2004, Martin escribi?para Late Night with Conan O Brien. En 2004, Martin ten?a su propio Comedy Central Presents Stand-up especial. Su especial se divide en tres partes. En la primera, se realiza en forma tradicional stand-up',TO_DATE('16-11-1728','DD-MM-YYYY'),0);
INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES(1000,2000,'campesinos peques','2horas 22minutooooooooooooooooooooos','En  convirti?en un especial de televisi?n brit?nica en 2004. Desde 2003 hasta 2004, Martin escribi?para Late Night with Conan O Brien. En 2004, Martin ten?a su propio Comedy Central Presents Stand-up especial. Su especial se divide en tres partes. En la primera, se realiza en forma tradicional stand-up',TO_DATE('16-11-1728','DD-MM-YYYY'),0);
INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES(1000,2000,'campesinos peques','2horas 22minutos','En  convirti?en un especial de televisi?n brit?nica en 2004. Desde 2003 hasta 2004, Martin escribi?para Late Night with Conan O Brien. En 2004, Martin ten?a su propio Comedy Central Presents Stand-up especial. Su especial se divide en tres partes. En la primera, se realiza en forma tradicional stand-up',TO_DATE('16-11-1728','DD-MM-YYYY'),'0ASD');

INSERT INTO actores (id,fechaFallecimiento,detalle) VALUES(1000,null,
'<?xml version="1.0"?>
<!DOCTYPE detalle[<!ELEMENT detalle (nombre,apellido,fechaNacimiento,sexo)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apellido (#PCDATA)>
<!ELEMENT fechaNacimiento (#PCDATA)>
<!ELEMENT sexo (#PCDATA)>
]>
<detalle>
<fechaNacimiento>19/12/1980</fechaNacimiento>
<sexo>femenino</sexo>
</detalle>');
INSERT INTO actores (id,fechaFallecimiento,detalle) VALUES(null,
'<?xml version="1.0"?>
<!DOCTYPE detalle[<!ELEMENT detalle (nombre,apellido,fechaNacimiento,sexo)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apellido (#PCDATA)>
<!ELEMENT fechaNacimiento (#PCDATA)>
<!ELEMENT sexo (#PCDATA)>
]>
<detalle>
<nombre>josefina</nombre>
<apellido>molano</apellido>
<fechaNacimiento>19/12/1980</fechaNacimiento>
<sexo>femenino</sexo>
</detalle>');
INSERT INTO actores (id,fechaFallecimiento,detalle) VALUES(0,null);

INSERT INTO actua (idActor,idMultimedia,personaje) VALUES(667,1275,'personaje principalfds');
INSERT INTO actua (idActor,idMultimedia,personaje) VALUES(667,1275,'objeto');
INSERT INTO actua (idActor,idMultimedia,personaje) VALUES(668,'1275SAD','reparto');
INSERT INTO actua (idActor,idMultimedia,personaje) VALUES('667',1275,'reparto');

INSERT INTO premiosActores (id,nombre,categoriaPremio,idActor) VALUES(1000,'premios espa?a','mejor actriz de reparto');
INSERT INTO premiosActores (id,nombre,categoriaPremio,idActor) VALUES('premios espa?a','mejor actriz de reparto',406);
INSERT INTO premiosActores (id,nombre,categoriaPremio,idActor) VALUES(0,'premios espa?a','mejor actriz de reparto','406ASDA');
INSERT INTO premiosActores (id,nombre,categoriaPremio,idActor) VALUES('0SSADA','premios espa?a','mejor actriz de reparto',406);

INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES('czwwrkzlqtjbexmucdooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooovy@hotmail.com','carlos',TO_DATE('21-4-1947','DD-MM-YYYY'));
INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES(5,TO_DATE('21-4-1947','DD-MM-YYYY'));
INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES('czwwrkzlqtjbexmucdvy@hotmail.com',4534,TO_DATE('21-4-1947','DD-MM-YYYY'));
INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES('czwwrkzlqtjbexmucdvy@hotmail.com','carlos',);

INSERT INTO solicitudes (id,titulo) VALUES(1000);
INSERT INTO solicitudes (id,titulo) VALUES('corredores',0);
INSERT INTO solicitudes (id,titulo) VALUES('0ASD','corredores');
INSERT INTO solicitudes (id,titulo) VALUES('corredores');

INSERT INTO solicita (idSolicitud,idUsuario) VALUES('czwwrkzlqtjbexmucdvy@hotmail.com');
INSERT INTO solicita (idSolicitud,idUsuario) VALUES(367);
INSERT INTO solicita (idSolicitud,idUsuario) VALUES('367ASDA','czwwrkzlqtjbexmucdvy@hotmail.com');
INSERT INTO solicita (idSolicitud,idUsuario) VALUES(367,45464);

INSERT INTO planes (id,nombre) VALUES(4,'premium');
INSERT INTO planes (id,nombre) VALUES(4,'estandar');
INSERT INTO planes (id,nombre) VALUES('0DA','premium');
INSERT INTO planes (id,nombre) VALUES('premium');

INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES(0,'msktfskogb',3,'czwwrkzlqtjbexmucdvy@hotmail.com',2,5);
INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES(1000,'msktfskogb','czwwrkzlqtjbexmucdvy@hotmail.com',2,0);
INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES(0,'msktfskogb',3,'czwwrkzlqtjbexmucdvy@hotmail.com',0);
INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES(1000,'msktfskogb',3,'czwwrkzlqtjbexmucdvy@hotmail.com',2,'ASD0');
INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES(1000,3,'czwwrkzlqtjbexmucdvy@hotmail.com',2,0);

INSERT INTO definicionVistas (nombre,idSuscripcion) VALUES('HDcxvdfbdfbvdf,mnvdsmvndfjkvnkjvndfkv dfkvndfkv kdfnvfdkv ksdv kdjv skdv sdk',288);
INSERT INTO definicionVistas (nombre,idSuscripcion) VALUES(5SAD,288);
INSERT INTO definicionVistas (nombre,idSuscripcion) VALUES('HD','ASD288');
INSERT INTO definicionVistas (nombre,idSuscripcion) VALUES(288);

INSERT INTO plantillas (id,idSuscripcion,fechaNacimiento,nombre) VALUES(1000,75,10,'cesar');
INSERT INTO plantillas (id,idSuscripcion,fechaNacimiento,nombre) VALUES(1000,75,TO_DATE('18-8-1720','DD-MM-YYYY'),null);
INSERT INTO plantillas (id,idSuscripcion,fechaNacimiento,nombre) VALUES(SADASD,75,TO_DATE('18-8-1720','DD-MM-YYYY'),'cesar');
INSERT INTO plantillas (id,idSuscripcion,fechaNacimiento,nombre) VALUES(1000,TO_DATE('18-8-1720','DD-MM-YYYY'),'cesar');

INSERT INTO observa (idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES(1541,709,TO_DATE('23-6-1727','DD-MM-YYYY'),5);
INSERT INTO observa (idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES(1541,708);
INSERT INTO observa (idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES(708,TO_DATE('23-6-1727','DD-MM-YYYY'),0);
INSERT INTO observa (idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES('1541',708,TO_DATE('23-6-1727','DD-MM-YYYY'),0);
