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

# Auto scaling y Balanceador de carga

Primero que todo, hay que crear un template de EC2 que tenga en el campo user data el siguiente script

```sh
#!/bin/bash
git clone https://github.com/amchp/reto4.git
cd reto4
chmod +x dockersetup.sh
./dockersetup.sh
cd moodle
sudo docker compose up
```

![image](https://user-images.githubusercontent.com/69641274/235573361-0922e2c8-9e6d-4da5-8aaf-12953a8843ef.png)

![image](https://user-images.githubusercontent.com/69641274/235573410-b241c22f-5d2e-4610-bde2-672fba92ae0c.png)

Ahora es necesario ir a Auto Scaling Groups y crear uno

![image](https://user-images.githubusercontent.com/69641274/235573472-8c4e189e-32c3-4a31-9987-e74032d39d17.png)

Lo importante es seleccionar la plantilla creada

![image](https://user-images.githubusercontent.com/69641274/235573493-3a59619b-f5bd-405d-b7b7-53902f05c2d8.png)

Añadir todas las zonas disponibles

![image](https://user-images.githubusercontent.com/69641274/235573582-fd3f71b8-b96c-401f-84fb-a80f4b61dddf.png)

Ahora es necesario crear el load balancer

![image](https://user-images.githubusercontent.com/69641274/235573639-307388f4-e742-4ca9-8e70-c3583bc6f76e.png)

Importante, seleccionar Internet-facing

![image](https://user-images.githubusercontent.com/69641274/235573698-ba090ed6-a3ec-46be-bf57-fc49895545eb.png)

Y hacer que corra en el puerto 80 (Lo cual será temporal mientras se configura el certificado SSL)

![image](https://user-images.githubusercontent.com/69641274/235573775-8d32b58a-2721-457d-9aaf-1c116daecf1c.png)

Configura a tu placer

![image](https://user-images.githubusercontent.com/69641274/235573808-34d171d8-8ee2-46a6-996a-196c80dc2f97.png)

Y eso será todo. Hay balanceador de carga y grupo autoescalable listo.


## Registrar dominio personalizado

Para esta práctica se registró el dominio telematica.tech por medio de Hostinger.com.

![image](https://user-images.githubusercontent.com/69641274/235567379-d30d966f-9c8f-4b03-91e6-210fe1f169fb.png)

Se creó un registro que apunta al balanceador de carga (reto4 y www.reto4)

![image](https://user-images.githubusercontent.com/69641274/235572112-20f223b1-346e-4b79-a2ae-a77eee48c552.png)

Con esto, es necesario ir a AWS y dirigirte al Certificate Manager

![image](https://user-images.githubusercontent.com/69641274/235572288-88a6845b-ed2c-4af4-953b-6242fa98f24f.png)

Y aquí deberás solicitar el certificado para reto4.telematica.tech

![image](https://user-images.githubusercontent.com/69641274/235572397-e1c626b1-5577-4899-9dd2-1b19ac1f6d43.png)

Y deberás seleccionar la opción DNS. AWS te generará estos dos enlaces (Que deberás añadir a Hostinger como un CNAME)

![image](https://user-images.githubusercontent.com/69641274/235572507-cd1712be-2672-4af8-b026-d700aa06f504.png)

En caso de que la solicitud falle, deberás añadir estos registros a Hostinger

![image](https://user-images.githubusercontent.com/69641274/235572600-fec9a05f-c48a-4083-aa03-ddb43b9692f5.png)
![image](https://user-images.githubusercontent.com/69641274/235572608-4028fc0c-b1d1-4e15-9f6d-4b7988b616c9.png)

Y esto sería todo, ahora tienes tu dominio registrado en AWS para permitir tráfico HTTPS.


## Añadir dominio al balanceador de carga

Debes ir a la configuración del balanceador y añadir un listener

![image](https://user-images.githubusercontent.com/69641274/235572879-7c3b6afa-3ce6-4294-898a-bf5d94ddb920.png)

![image](https://user-images.githubusercontent.com/69641274/235572979-9d6e3683-02df-43c0-b3de-670085c658f5.png)

![image](https://user-images.githubusercontent.com/69641274/235572989-e9af90c5-1bb8-4f99-8fa1-b43543c30e2f.png)

y acá al fondo, aparecerá el dominio listo para ser usado.

Esta es toda la configuración necesaria para ver el proyecto corriendo

![image](https://user-images.githubusercontent.com/69641274/235573996-7d84bf86-3974-4279-a95c-5a9b27936adc.png)

