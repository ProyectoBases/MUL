INSERT INTO directores (id,nombre,apellido,calificacion) VALUES(1001,'clementino','jimenez',3);
INSERT INTO directores (id,nombre,apellido,calificacion) VALUES(1002,'lindomar','hernandez',4.5);
INSERT INTO directores (id,nombre,apellido,calificacion) VALUES(1003,'abelardo','castano',3.7);

INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES(3000,'como conoci a tu madre',4.2,'1hora 34minutos',30,'Desste segmento para hablar de las llamadas tendencias de moda entre los jovenes tales como pipas de agua el vino el marketing de guerrilla y los videojuegos. El 22 de marzo de 2007 Demetri hizo otra aparicion ',TO_DATE('20-6-1990','DD-MM-YYYY'));
INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES(3001,'al otro lado del lago',3,'1hora 50minutos',31,'Su particular estilo divertido y animado lo ha convertido en uno de los comediantes mas exitosos con eventos con boletos agotados en todo el mundo inclusive agotando boletos en Madison Square Garden y el Microsoft Theater. Ademas es unos de los comediantes mas vistos en YouTube con mas de 300 millones de vistas',TO_DATE('29-8-2000','DD-MM-YYYY'));
INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES(3002,'always with you',3.5,'2horas 10minutos',32,'Cuenta la historia de dos jovenes que se conocieron en el High School y se volvieron muy cercanos al punto de enamorarse, pero muchos años despues sus padres los separan y la chica muere de una enfermedad y el chico sin saber esto sigue fiel a ese amor',TO_DATE('15-3-2012','DD-MM-YYYY'));

INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES('czwwrkzlqtjbex@hotmail.com','abelardo',TO_DATE('21-4-2000','DD-MM-YYYY'));
INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES('czwwrbexmucdvy@hotmail.com','clementino',TO_DATE('6-4-1998','DD-MM-YYYY'));
INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES('tjbexmucdvy@hotmail.com','lindomar',TO_DATE('24-8-1995','DD-MM-YYYY'));
