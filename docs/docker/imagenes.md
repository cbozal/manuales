#Docker
##Introducción
Las imagenes son plantillas a partir de las cuales se van a levantar nuestros contenedores, las imagenes son de solo lectura. Las imagenes se guardan en 
repositorios y estos a su vez en registros. Estos registros pueden estar en local, on premise o en la nube. El registro referencia es el [dockerHUB]https://hub.docker.com.
Las imagenes a su vez estan etiquetadas con TAGS, estos tags son las versiones de la imagen, si al correr una imagen o descargarla no le indicamos nada nos traeremos la versión latest. Por lo tanto el formato es el siguiente :
<repositorio>/<nombreimagen>:<tag>
Primero buscara en local y si no se ira al docker hub

###Comandos
Con la opción --help podemos ver todas las opciones que tienen los comandos.
#### LISTAR
El comando images nos permite ver que imagenes tenemos en local descargadas. 
```bash
docker images
```
####BORRAR
Con el comando rmi borramos las imagens

####PULL
Con este comando me bajo una imagen del registro a local

####PUSH
con este comando subo una imagen al registro

####COMMIT
Creo imagenes a partir de un container

####BUILD
Construyo una imagen a partir de un Dockerfile

