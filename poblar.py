

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
nombresMultimedias = [
          "guardianes",
          "galacticos",
          "mejores",
          "compadres",
          "desterrados",
          "amigos",
          "pocajontas",
          "corredores",
          "lobos",
          "vampiros",
          "coyotes",
          "mario",
          "pitufos",
          "asesinos",
          "peques",
          "estudiantes",
          "perfectos",
          "conocidos",
          "colegas",
          "pocos",
          "curtidores",
          "campesinos",
          "flacos"
]
nombresPremiosMultimedia = [
        "premios colombia",
        "premios venezuela",
        "premios canda",
        "premios franca",
        "oscar",
        "premios peru",
        "premios estados unidos",
        "premios españa",
        "premios chile",
        "premios puerto rico"
]
nombres = ["andres",
           "felipe",
           "yeisson",
           "daniela",
           "daniel",
           "carlos",
           "ernesto",
           "fabiola",
           "sebastian",
           "robert",
           "richard",
           "michael",
           "cesar",
           "diana",
           "pablo",
           "gualdron",
           "jairo",
           "josefina",
           "angelica"
    ]
apellidos=["gualdron",
           "lindo",
           "rodriguez",
           "vivas",
           "palacios",
           "rozo",
           "flores",
           "diaz",
           "maldonado",
           "molano",
           "lewandowsky",
           "cuadrado",
           "pereira"
    ]
letras = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
meses = [
      "enero",
      "febrero",
      "marzo",
      "abril",
      "mayo",
      "junio",
      "julio",
      "agosto",
      "septiembre",
      "octubre",
      "noviembre",
      "diciembre"
 ]


categoriasM = [
    "accion",
    "aventura",
    "drama",
    "romance",
    "miedo",
    "animadas",
    "juvenil",
    "antiguo",
    "amor",
    "ciencia ficcion",
    "comedias",
    "deportes",
    "independientes",
    "internacionales",
    "música",
]


personajes = ["principal","secundario","reparto"]


generos = ["masculino","femenino"]

idMultimedia = 2999
idDirector = 1000
idSeries = 999
idDocumentales = 999
idActor = 999
idSolicitud = 999
idUsuario = 990
idSuscripcion = 495
idPlantilla=990
idCategoria = 14
idTemporadas = 999


comienzoPeliculas = (0,1000)
comienzoSeries = (1000,2000)
inicioDocumentales = (2000,3000)



def directores():
    # x = stdin.readline().strip().split()
    cont = 0
    for i in range(1001):
        # stdin.readline().strip()
        # nombre = x[1]
        # apellido = x[2]
        print("INSERT INTO directores (id,nombre,apellido,calificacion) VALUES("+str(cont)+","+"\'"+nombres[random.randrange(len(nombres))]+"\'"+","+"\'"+apellidos[random.randrange(len(apellidos))]+"\'"+","+str(random.randrange(5))+");")
        cont +=1        
        # x = stdin.readline().strip().split()

def multimedias():
    # x = stdin.readline().strip()
    cont = 0
    for i in range(3000):
        # print(x,"#######################################")
        # x = x.split("!")
        # nombre = x[0]
        # nombre.strip()
        # nombre = nombre.replace("'","")
        # nombre = nombre.replace('"',"")
        # nombre = nombre.replace("&","y")
        # duracion = x[1]
        print("INSERT INTO multimedias (id,nombre,calificacion,duracion,idDirector,sinopsis,fechaEstreno) VALUES("+str(cont)+","+"\'"+nombresMultimedias[random.randrange(len(nombresMultimedias))]+" "+nombresMultimedias[random.randrange(len(nombresMultimedias))]+"\'"+","+str(random.randrange(1,5))+","+"\'"+str(random.randrange(2))+"horas "+str(random.randrange(60))+"minutos"+"\'"+","+str(random.randrange(idDirector))+","+"\'"+sinopsis[random.randrange(len(sinopsis))].replace("\\","").replace("ñ","n").replace("á","a").replace("é","e").replace("í","i").replace("ó","o").replace("ú","").replace("'","").replace('"',"").replace("´","").replace(",","").replace("&","y")+"\'"+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+");")
        cont+=1
        # x = stdin.readline().strip()

def categorias():
    cont = 0
    for i in range(len(categoriasM)):
        print("INSERT INTO categorias (id,nombre) VALUES("+str(cont)+","+"\'"+categoriasM[i]+"\'"+");")
        cont+=1

def categoriasMultimedias():
  repetidos = set()
  for i in range(1000):
    uno = random.randrange(idCategoria)
    dos = random.randrange(idMultimedia)
    if (uno,dos) not in repetidos:
      repetidos.add((uno,dos))
      print("INSERT INTO (idCategoria,idMultimedia) VALUES ("+str(uno)+","+str(dos)+")")

def premiosMultimedia():
    cont = 0
    # x = stdin.readline().strip()
    for i in range(1000):
        # x = x.split(",")
        # nombre = x[0]
        # nombre = nombre.replace("&","y")
        print("INSERT INTO premiosMultimedia (id,nombre,categoriaPremio,idMultimedia) VALUES("+str(cont)+","+"\'"+nombresPremiosMultimedia[random.randrange(len(nombresPremiosMultimedia))]+"\'"+","+"\'"+categoriasPremioMultimedia[random.randrange(len(categoriasPremioMultimedia))]+"\'"+","+str(random.randrange(idMultimedia))+");")
        cont+=1
        # x = stdin.readline().strip()

def series():
    for i in range(comienzoSeries,comienzoSeries+1000):
        print("INSERT INTO series (id) VALUES("+str(i)+");")


def documentales():
    for i in range(inicioDocumentales,inicioDocumentales+1000):
        print("INSERT INTO documentales VALUES("+str(i)+");")



def temporadas():
    cont = 0
    for i in range(1000):
        print("INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES("+str(i)+","+str(random.randrange(comienzoSeries[0],comienzoSeries[1]))+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+","+str(random.randrange(10))+");")

    

def capitulosSeries():
    x = stdin.readline().strip()
    i=0
    while len(x)!=0:
        x = x.replace("INSERT INTO temporadas (id,idSerie,fechaEstreno,numeroTemporada) VALUES(","")
        lis = x.split(",")
        temporada = lis[0]
        serie = lis[1]
        descripcion = sinopsis[random.randrange(len(sinopsis))]
        print("INSERT INTO capitulosSeries (id,idTemporada,idSerie,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES ("+str(i)+","+str(temporada)+","+str(serie)+","+"\'"+nombresMultimedias[random.randrange(len(nombresMultimedias))]+"\'"+","+"\'"+str(random.randrange(3))+"horas "+str(random.randrange(60))+"minutos"+"\'"+","+"\'"+descripcion+"\'"+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+","+str(random.randrange(10))+");")
        x = stdin.readline().strip()
        i+=1


def capitulosDocumentales():
    cont = 0
    for i in range(inicioDocumentales[0],inicioDocumentales[1]):
        descripcion = sinopsis[random.randrange(len(sinopsis))]
        print("INSERT INTO capitulosDocumentales (id,idDocumental,nombre,duracion,descripcion,fechaEstreno,numeroCapitulo) VALUES("+str(cont)+","+str(i)+","+"\'"+nombresMultimedias[random.randrange(len(nombresMultimedias))]+" "+nombresMultimedias[random.randrange(len(nombresMultimedias))]+"\'"+","+"\'"+str(random.randrange(5))+"horas "+str(random.randrange(60))+"minutos"+"\'"+","+"\'"+descripcion+"\'"+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+","+str(random.randrange(10))+");")
        cont+=1

def actores():
    for i in range(1000):
        detalle = "\n\'<?xml version=\"1.0\"?>\n<detalle>\n<nombre>"+nombres[random.randrange(len(nombres))]+"</nombre>\n<apellido>"+apellidos[random.randrange(len(apellidos))]+"</apellido>\n<fechaNacimiento>"+str(random.randrange(1,30))+"</fechaNacimiento>\n<sexo>"+generos[random.randrange(len(generos))]+"</sexo>\n</detalle>"
        print("INSERT INTO actores (id,fechaFallecimiento,detalle) VALUES("+str(i)+","+"null"+","+detalle+"\');")


def actua():
    for i in range(1000):
        print("INSERT INTO actua (idActor,idMultimedia,personaje) VALUES("+str(random.randrange(1,idActor))+","+str(random.randrange(1,idMultimedia))+","+"\'"+personajes[random.randrange(len(personajes))]+"\');")


def premiosActores():
    cont = 0
    for i in range(1000):
        nombre = nombresPremiosMultimedia[random.randrange(len(nombresPremiosMultimedia))]
        print("INSERT INTO premiosActores (id,nombre,categoriaPremio,idActor) VALUES("+str(cont)+","+"\'"+nombre+"\'"+","+"\'"+categoriasPremioActor[random.randrange(len(categoriasPremioActor))]+"\'"+","+str(random.randrange(idActor))+");")
        cont+=1


def usuarios():
    ya = set()
    for i in range(1000):
        conca=""
        for j in range(20):
            conca+=letras[random.randrange(len(letras))]
        correo = conca+"@hotmail.com"
        while correo in ya:
            for j in range(20):
                conca+=letras[random.randrange(len(letras))]
            correo = conca+"@hotmail.com"
            conca = ""
        ya.add(correo)
        print("INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES(\'"+correo+"\',\'"+nombres[random.randrange(len(nombres))]+"\'"+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+");")



def planes():
    plane = ["premium","basico","estandar"]
    for i in range(len(plane)):
        print("INSERT INTO planes (id,nombre) VALUES("+str(i)+","+"\'"+plane[i]+"\'"+");")


def peliculas():
  for i in range(comienzoPeliculas,comienzoPeliculas+1000):
      print("INSERT INTO peliculas (id) VALUES("+str(i)+");")



def solicitudes():
    cont = 0
    for i in range(1000):
        titulo = nombresMultimedias[random.randrange(len(nombresMultimedias))]
        print("INSERT INTO solicitudes (id,titulo) VALUES("+str(cont)+","+"\'"+titulo+"\');")
        cont +=1



def solicita():
    x = stdin.readline().strip()
    while len(x)!=0:
        usuario = x
        usuario = usuario.replace("INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES(","")
        usuario = usuario.split(",")
        usuario = usuario[0]
        print("INSERT INTO solicita (idSolicitud,idUsuario) VALUES("+str(random.randrange(idSolicitud))+","+usuario+");")
        x = stdin.readline().strip()


def suscripciones():
    plane = ["premium","basico","estandar"]
    x = stdin.readline().strip()
    i = 0
    while len(x) !=0:
        nombre = ""
        for j in range(10):
          nombre += letras[random.randrange(len(letras))]
        usuario = x
        usuario = usuario.replace("INSERT INTO usuarios (correo,nombre,fechaNacimiento) VALUES(","")
        usuario = usuario.split(",")
        usuario = usuario[0]
        print("INSERT INTO suscripciones (id,nombre,numeroPlantillas,idUsuario,idPlan,activa) VALUES("+str(i)+","+"\'"+nombre+"\'"+","+str(random.randrange(1,6))+","+usuario+","+str(random.randrange(0,3))+","+str(random.randrange(0,2))+");")
        i+=1
        x = stdin.readline().strip()

def definicionVistas():
    p = set()
    vistas = ["normal","HD","ultra HD"]
    for i in range(1000):
        nombre = vistas[random.randrange(len(vistas))]
        suscripcion = str(random.randrange(idSuscripcion))
        while (nombre,suscripcion) in p:
            nombre = vistas[random.randrange(len(vistas))]
            suscripcion = str(random.randrange(idSuscripcion))
        p.add((nombre,suscripcion))
        print("INSERT INTO definicionVistas (nombre,idSuscripcion) VALUES("+"\'"+nombre+"\'"+","+suscripcion+");")


def plantillas():
    for i in range(1000):
        print("INSERT INTO plantillas (id,idSuscripcion,fechaNacimiento,nombre) VALUES("+str(i)+","+str(random.randrange(idSuscripcion))+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+","+"\'"+nombres[random.randrange(len(nombres))]+"\');")

    
def observa():
    for i in range(1000):
        print("INSERT INTO observa (idMultimedia,idPlantilla,fecha,vistaCompleta) VALUES("+str(random.randrange(idMultimedia))+","+str(random.randrange(idPlantilla))+","+"TO_DATE("+"\'"+str(random.randrange(1,29))+"-"+str(random.randrange(1,12))+"-"+str(random.randrange(1700,2000))+"\'"+","+"\'DD-MM-YYYY\')"+","+str(random.randrange(0,1))+");")

observa()


        
