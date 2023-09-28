# Este es el Dockerfile que incluirá tanto la imagen de Docker como el archivo docker-compose.yml
FROM docker:latest

# Copia el archivo docker-compose.yml al contenedor
COPY docker-compose.yml /app/docker-compose.yml

# Establece el directorio de trabajo en /app
WORKDIR /app

# Instala Docker dentro del contenedor (puede variar según la distribución base)
RUN apk update && apk add docker

# Configura el inicio de Docker en el contenedor (puede variar según la distribución base)
RUN rc-update add docker boot
