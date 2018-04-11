from sys import stdin
import random

sinopsis = ['El Sunnyv rivalidades y la delincuencia están al orden del día pero en la que también es posible formar una familia, tener amigos y encontrar el amor... siempre y cuando tenga uno claro que la familia le va a hacer la vida imposible, el amor le va a amargar la existencia y los amigos acabarán por llevarle a la tumba.',
            'BoJack Horsemg para la plataforma digital Netflix. Trata la historia de BoJack, un caballo antropomorfo que triunfó en los años 1990 con una telecomedia y que actualmente es incapaz de reconducir su vida profesional y personal. A través de un marco ambientado en el mundo del espectáculo de Hollywood, los episodios abordan complejos conflictos personales y tienen un hilo narrativo serializado',
            'Ever Aftecreadas previamente por Mattel (inspiradas por su otra franquicia Monster High). La serie trata sobre las historias de los hijos adolescentes de personajes famosos de cuentos de hadas clásicos, canciones de cuna y mitos griegos, que estudian en una escuela-internado, llamada Ever After High. En algunos casos, los libros son escritos por Suzanne Selfors, pero la mayoría de ellos suelen ser escritos por Hale, ya que originalmente es la autora de la serie. Técnicamente no es una serie de televisión en los Estados Unidos, ya que es una serie Web. Sin embargo la serie es transmitida en la televisión de Francia por el canal infantil francés, Gulli. Ever After High es considerada apta para todo el público',
            'Un dí consigue acompañarles y juntos se dirigen al imperio de Kublai Khan. Penurias y privaciones marcan el camino hasta que finalmente, tras varios años, logran llegar a Mongolia y a la corte del Gran Khan. Allí se gana el respeto de Kublai, se hace amigo de Chinkin, el hijo de Kublai Khan, quien sufre de epilepsia',
            'Thirla edición de bolsillo alcanzó el número uno en la lista de bestsellers del New York Times en julio de 2011',
            'Willd-up y por conducir Bill Burrs Monday Morning Podcast. Como actor interpretó a Patrick Kuby en la serie Breaking Bad y protagonizó la sitcom animada F Is for Family. En 2017 la Rolling Stone lo colocó en el número diecisiete de los cincuenta mejores comediantes en vivo de todos los tiempos',
            'Peterstralia, Nueva Zelanda, Irlanda, Afganistán, Suecia, Sudáfrica, India, el Caribe, Filipinas, Vietnam, China, Hong Kong, Sri Lanka, Singapur, los Emiratos Árabes Unidos, Baréin, Jordania, Noruega, Líbano, Omán y Malasia, entre otros',
            'Demetrdiante stand-up y por su programa de televisión en Comedy Central llamado Important Things with Demetri Martin',
            'En  convirtió en un especial de televisión británica en 2004. Desde 2003 hasta 2004, Martin escribió para Late Night with Conan O Brien. En 2004, Martin tenía su propio Comedy Central Presents Stand-up especial. Su especial se divide en tres partes. En la primera, se realiza en forma tradicional stand-up',
            'Desste segmento para hablar de las llamadas tendencias de moda entre los jóvenes, tales como pipas de agua, el vino, el marketing de guerrilla y los videojuegos. El 22 de marzo de 2007, Demetri hizo otra aparición en The Daily Show, hablando acerca de la demanda de Viacom contra Google y YouTube',
            'Ha gAllen. Martin volvió a The Daily Show el 22 de marzo de 2006, como el nuevo Corresponsal Juvenil, llamando a su segmento de Noticias Importantes Profesionales con Demetri Martin. En 2007, protagonizó el video musical de Fountains of Wayne, Someone to Love como Seth Shapiro, un personaje de la canción junto a Faryl Millet',
            'Mida de Open Season), pero fue reemplazado por Matthew J. Munn en Open Season 3',
            'Antes de meterse en el mundo de la comedia estuvo trabajando en una compañía telefónica de Los Ángeles. Su familia le pidió que siguiera en su puesto para poder mantenerse económicamente, sin embargo decidió dar un paso adelante a pesar de los riesgos que acarrearía su mala situación económica, puesto que acabó perdiendo su casa y el coche',
            'Su particular estilo divertido y animado, lo ha convertido en uno de los comediantes más exitosos, con eventos con boletos agotados en todo el mundo, inclusive agotando boletos en Madison Square Garden y el Microsoft Theater. Además, es unos de los comediantes más vistos en YouTube con más de 300 millones de vistas',
            ]
categoriasPremioMultimedia = ["major pelicula",
                              "mejor documental",
                              "mejor edicion de sonido",
                              "mejores efectos visuales",
                              "mejor fotografia",
                              "mejor guion adaptado",
                              "mejor guion original",
                              "mejor maquillaje y peinado",
                              "mejor montaje",
                              "mejor pelicula de animacion",
                              "mejor pelicula de habla no inglesa",
                              "mejor sonido",
                              "mejor banda sonora",
                              "mejor cancion original",
                              "mejor diseño de vestuario",
                              "mejor diseño de produccion"
                              ]
categoriasPremioActor = ["mejor actor",
                         "mejor actor de reparto",
                         "mejor acriz",
                         "mejor actriz de reparto"
                         ]
idMultimedia = 178
idDirector = 99
idSeries = 999
idDocumentales = 999


def directores():
    x = stdin.readline().strip().split()
    cont = 0
    while len(x)!=0:
        stdin.readline().strip()
        nombre = x[1]
        apellido = x[2]
        print("INSERT INTO directores VALUES("+str(cont)+","+"\'"+nombre+"\'"+","+"\'"+apellido+"\'"+","+str(random.randrange(5))+");")
        cont +=1        
        x = stdin.readline().strip().split()

def multimedias():
    x = stdin.readline().strip()
    cont = 0
    while len(x)!=0:
        print(x,"#######################################")
        x = x.split("!")
        nombre = x[0]
        nombre.strip()
        nombre = nombre.replace("'","")
        nombre = nombre.replace('"',"")
        nombre = nombre.replace("&","y")
        duracion = x[1]
        print("INSERT INTO multimedias VALUES("+str(cont)+","+"\'"+nombre+"\'"+","+str(random.randrange(1,5))+","+"\'"+duracion+"\'"+","+str(random.randrange(idDirector))+","+"\'"+sinopsis[random.randrange(len(sinopsis))].replace("\\","").replace("ñ","n").replace("á","a").replace("é","e").replace("í","i").replace("ó","o").replace("ú","").replace("'","").replace('"',"").replace("´","").replace(",","").replace("&","y")+"\'"+");")
        cont+=1
        x = stdin.readline().strip()


def categorias():
    x = stdin.readline().strip()
    cont = 0
    while len(x)!=0:
        x = x.split(":")
        nombre = x[0].strip().split(".")
        nombre.strip()
        nombre = nombre[1]
        nombre = nombre.replace("&","y")
        nombre = nombre.replace("'","")
        nombre = nombre.replace('"',"")
        nombre = nombre.replace("’","")
        print("INSERT INTO categorias VALUES("+str(cont)+","+"\'"+nombre+"\'"+","+str(random.randrange(idMultimedia))+");")
        cont+=1
        x = stdin.readline().strip()
def premiosMultimedia():
    cont = 0
    x = stdin.readline().strip()
    while len(x)!=0:
        x = x.split(",")
        nombre = x[0]
        nombre = nombre.replace("&","y")
        print("INSERT INTO premiosMultimedia VALUES("+str(cont)+","+"\'"+nombre+"\'"+","+"\'"+categoriasPremioMultimedia[random.randrange(len(categoriasPremioMultimedia))]+"\'"+","+str(random.randrange(idMultimedia))+");")
        cont+=1
        x = stdin.readline().strip()
def series():
    cont = 0
    while cont<1000:
        f = random.randrange(len(sinopsis))
        sin = sinopsis[f].replace("'","").replace('"',"").replace(",","").replace("&","").replace("’","")
        print("INSERT INTO series VALUES("+str(cont)+","+str(random.randrange(idMultimedia))+","+str(random.randrange(20))+");")
        cont+=1


def documentales():
    cont = 0
    while cont<1000:
        print("INSERT INTO documentales VALUES("+str(cont)+","+str(random.randrange(idMultimedia))+","+str(random.randrange(20))+");")
        cont+=1


def temporadas():
    cont = 0
    x = stdin.readline().strip()
    while len(x)!=0:
        x = x.split("VALUES")
        valores = x[1]
        valores = valores.split(",")
        for j in valores:
            j = j.replace(";","").replace("(","").replace(")","")
        cont+=1
        print("INSERT INTO temporadas VALUES"+valores[0]+","+valores[1]+","+str(random.randrange(20))+");")
        x = stdin.readline().strip()
    

def capitulosSeries():
    x = stdin.readline().strip()
    while len(x)!=0:
        x = x.split("!")
        uno = x[0].split("(")
        IDS = uno[1].split(",")
        ID = IDS[0]
        idMultimedia = IDS[1]
        nombre = x[1].replace("'","").replace('"',"").replace("&","y").replace("`","")
        duracion = x[2]
        descripcion = sinopsis[random.randrange(len(sinopsis))]
        print("INSERT INTO capitulosSeries VALUES("+str(ID)+","+str(idMultimedia)+","+"\'"+nombre+"\'"+","+"\'"+duracion+"\'"+","+"\'"+descripcion+"\'"+");")
        x = stdin.readline().strip()

capitulosSeries()





        
