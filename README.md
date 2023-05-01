# Reto 4

## Crear un grupo de seguridad
Primero entra CLI de AWS.

Ve a AWS VPC.
<img width="1280" alt="Screenshot 2023-05-01 at 4 38 36 PM" src="https://user-images.githubusercontent.com/28406146/235536443-9ecc13a8-900c-4ec2-b572-32ba94d82ab0.png">

Entra a grupos de seguridad.
<img width="1280" alt="Screenshot 2023-05-01 at 4 38 57 PM" src="https://user-images.githubusercontent.com/28406146/235536462-40a604d0-ee06-463f-86ab-02b23a39820f.png">

Crea un nuevo grupo de seguridad.
<img width="1280" alt="Screenshot 2023-05-01 at 4 39 15 PM" src="https://user-images.githubusercontent.com/28406146/235536504-eb95d5d3-d4dd-431f-95e1-70fb2c3e7612.png">

Ponle un nombre y una descripción.
<img width="1280" alt="Screenshot 2023-05-01 at 4 39 37 PM" src="https://user-images.githubusercontent.com/28406146/235536568-f27c9e0f-b973-497e-8f7a-39a303a1afc9.png">

En las reglas de entrada pon los puertos que tienes que tener abiertos.
<img width="1280" alt="Screenshot 2023-05-01 at 4 39 53 PM" src="https://user-images.githubusercontent.com/28406146/235536665-58bfab98-1392-4752-b8b5-2e89540e48dc.png">


## Crear el RDS en amazon
Primero entra CLI de AWS.

Buscar RDS en los servicios de amazon.
<img width="1280" alt="Screenshot 2023-05-01 at 4 23 18 PM" src="https://user-images.githubusercontent.com/28406146/235534405-f45deb41-c224-4770-868c-7c5802794846.png">

Crear una base de datos.
<img width="1280" alt="Screenshot 2023-05-01 at 4 23 27 PM" src="https://user-images.githubusercontent.com/28406146/235534503-6523b6f5-5769-494c-8560-d97867afe6e8.png">

Poner estas configuración.
<img width="1280" alt="Screenshot 2023-05-01 at 4 23 38 PM" src="https://user-images.githubusercontent.com/28406146/235534612-4a8a482c-dd80-41d5-b135-2f6e27d45a2f.png">

Ponle un nombre.
<img width="1280" alt="Screenshot 2023-05-01 at 4 24 23 PM" src="https://user-images.githubusercontent.com/28406146/235534660-a4d55cc8-c388-4e3f-a6e5-c54f1d88431a.png">

Ponle una clave.
<img width="1280" alt="Screenshot 2023-05-01 at 4 24 30 PM" src="https://user-images.githubusercontent.com/28406146/235534743-5787ce36-de8e-4822-9a07-b91bdbb3b5a0.png">

Escoge un grupo de seguridad que tenga el puerto 3306 hábilitado.
<img width="1280" alt="Screenshot 2023-05-01 at 4 24 51 PM" src="https://user-images.githubusercontent.com/28406146/235534804-69d96f28-f884-4227-b9a1-eb2d5ef60d21.png">

Crea la base de datos.
<img width="1280" alt="Screenshot 2023-05-01 at 4 25 00 PM" src="https://user-images.githubusercontent.com/28406146/235535084-74252a55-1788-44b4-817c-b38b30062e65.png">

Ingresa a la base de datos.
<img width="1280" alt="Screenshot 2023-05-01 at 4 31 56 PM" src="https://user-images.githubusercontent.com/28406146/235535255-144f2596-35fe-44de-a76a-a4dba18d8073.png">

Copia el punto de aceso.
<img width="1280" alt="Screenshot 2023-05-01 at 4 31 40 PM" src="https://user-images.githubusercontent.com/28406146/235535302-f8f62076-f8a2-4b4b-8ce7-efa9ad7c6a41.png">

Cambia los datos del docker compose a los correctos para que se pueda connectar a la base de datos.
<img width="1280" alt="Screenshot 2023-05-01 at 4 35 09 PM" src="https://user-images.githubusercontent.com/28406146/235535650-61c977b2-d7fd-404a-9170-c0f8d2aab4ff.png">

Así queda lista la base de datos.

## Crear el EFS en amazon

Primero entra CLI de AWS.

En los servicios busca el servicio de EFS.
<img width="1280" alt="Screenshot 2023-05-01 at 4 10 58 PM" src="https://user-images.githubusercontent.com/28406146/235532469-e4b2b0ff-21cf-4f17-954b-c20652343ae1.png">

Crea un file system.
<img width="1280" alt="Screenshot 2023-05-01 at 4 11 05 PM" src="https://user-images.githubusercontent.com/28406146/235532611-2be7ba80-8461-417c-8d8a-2b867386ebd6.png">

Ponle un nombre al sistema de archivos y seleciona una red.

<img width="1280" alt="Screenshot 2023-05-01 at 4 11 15 PM" src="https://user-images.githubusercontent.com/28406146/235532758-e26127e4-d9df-4552-b75e-f3ee86b67fb5.png">

Ve a los datos de conneción.
<img width="1280" alt="Screenshot 2023-05-01 at 4 11 31 PM" src="https://user-images.githubusercontent.com/28406146/235532852-4b26951b-967e-417c-aee0-22b08755f700.png">
<img width="1280" alt="Screenshot 2023-05-01 at 4 11 41 PM" src="https://user-images.githubusercontent.com/28406146/235532862-aec534b9-afa4-41a0-bf7d-36b7cf515dd3.png">
<img width="1280" alt="Screenshot 2023-05-01 at 4 11 50 PM" src="https://user-images.githubusercontent.com/28406146/235532881-2cf579be-5c2a-46d9-be08-3495143444d8.png">

La copia parte azul que empieza con fs y ponla en el docker-compose en las secciones resaltadas.
<img width="1280" alt="Screenshot 2023-05-01 at 4 21 10 PM" src="https://user-images.githubusercontent.com/28406146/235533609-d226a038-5045-4308-8de0-56def8f010e3.png">

Así ya esta listo el sistema de archivos.
