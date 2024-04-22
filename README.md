# Como inicializar el Proyecto?
Lo primero que debemos tener en cuenta es que, si bien en el docker-compose, hay una dependencia de servicios, docker interpreta que al estar levantado el contenedor de mysql
este ya puede instanciar el otro contenedor de swiftlogix, el inconveniente aqui es que el servicio de mysql, tiene un archivo dump.sql que contiene los datos
necesarios para la utilizacion del servicio, y este demora unos segundo en estar completamente desplegado, por tal motivo, debemos ejecutar este programa en 2 pasos
y no ejecutando `docker-compose up -d` (para ejecutar el proceso en segundo plano)

Lo primero que haremos es levantar la base de datos:
```bash
docker-compose up mysql -d
```
Y luego que esta este desplegada completamente (tarda no mas de 4 segundos), desplegamos el segundo servicio con 

```bash
docker-compose up swiftlogix -d
```