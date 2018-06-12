#Docker

##Instalación

###Ubuntu
El paquete de instalación disponible en el repositorio oficial de Ubuntu 16.04 no contiene la última versión de [Docker](https://www.docker.com/). Para obtener la última versión es necesario realizar la instalación desde el repositorio oficial de Docker.

Lo primero es instalar la clave GPG:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Adicionar el repositorio al `sources.list` del servidor:

```bash
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

Lo siguiente sería actualizar la base de datos de paquetes:

```bash
sudo apt-get update
```

Es necesario asegurarse de que instalaremos el paquete desde el repositorio de Docker en lugar del de Ubuntu 16.04:

```bash
apt-cache policy docker-ce
```

La respuesta será algo parecida a esta:

```bash
docker-ce:
  Installed: (none)
  Candidate: 18.03.0~ce-0~ubuntu
  Version table:
 *** 18.03.0~ce-0~ubuntu 500
        500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
        100 /var/lib/dpkg/status
     17.12.1~ce-0~ubuntu 500
        500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
     17.12.0~ce-0~ubuntu 500
        500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
     17.09.1~ce-0~ubuntu 500
        500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
```

Importante notar que no hay docker instalado, pero los candidatos instables provienen del repositorio de Docker, así que procedemos con la instalación:

```bash
sudo apt-get install -y docker-ce
```

En este punto Docker debe estar instalado, el demonio iniciado y el proceso establecido para que arranque durante el inicio del servidor. Verificamos que está ejecutándose:

```bash
sudo systemctl status docker
```

Dando como resultado algo como:

```bash
● docker.service - Docker Application Container Engine
   Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
   Active: active (running) since mar 2018-04-24 23:34:51 CEST; 35min ago
     Docs: https://docs.docker.com
 Main PID: 1634 (dockerd)
    Tasks: 27
   Memory: 85.7M
      CPU: 12.533s
   CGroup: /system.slice/docker.service
           ├─1634 /usr/bin/dockerd -H fd://
           └─1730 docker-containerd --config /var/run/docker/containerd/containerd.toml
```
###CENTOS7
Seguimos las instrucciones indicadas desde para la instalación en [Centos7](https://docs.docker.com/install/linux/docker-ce/centos/)

###WINDOWS
Para instalar desde windows seguir las instrucciones en [windows](https://docs.docker.com/docker-for-windows/install/)
###Añadir usuario al group en los linux
Para poder ejecutar docker tenemos que añadir nuestro usuario al grupo, esto es necesario ya que docker se ejecuta a traves de sockets y para escribir y leer el usuario que ejecute docker tiene que tener los privilegios.
ubuntu:
```bash
sudo usermod -aG docker <user>
```
centos
```bash
sudo chmod -aG docker <user>
```

