### Uso

Este repositorio contiene documentación, que ha sido creada mediante la librería [mkdocs.org](http://mkdocs.org).


### Escritura de documentación

La escritura de documentación se basa en el estandar [markdown](https://es.wikipedia.org/wiki/Markdown).

Markdown simplifica y agiliza la escritura de la documentación de código, y su inicialización a través de una guía de trucos tipo [cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf) es casi instantánea.


### Instalación

1. Instalar python
    * **Windows**: Desargar e instalar python [python.org](https://www.python.org/)
    * **Linux** (Ubuntu): Ejecutar:

        ``` bash
            $ sudo apt-get update
            $ sudo apt-get install python3.6 
        ```

2. Comprobar que  `python` y `pip` se han instalado de forma correcta. Desde la linea de comando:

    ``` bash
        $ python --version
        $ pip --version
    ```
3. Instalar `mkdocs`
    
    ``` bash
        pip install mkdocs
    ``` 
4. Comprobar la versión de `mkdocks` instalada:

    ``` bash
        mkdocs --version
    ```
5. Situarse en la carpeta del proyecto y servir la documentación ejecutando:
    ``` bash
        mkdocks serve
    ```

6. Navegar en el _site_ de documentación [http://localhost:3000](http://localhost:3000)


### Otros comandos

* `mkdocs new [dir-name]` - Crear un nuevo proyecto de documnentación.
* `mkdocs serve` - Iniciar el servidor de documentación, que se auto-refresca.
* `mkdocs build` - Construir el _site_ de documentación.
* `mkdocs help` - Imprimir la ayuda.


### Estructura de un proyecto de documentación

    mkdocs.yml    # Fichero de configuración.
    docs/
        index.md  # Homepage del _site_ de documentación.
        ...       # Otras páginas de markdown, imágenes y otros ficheros