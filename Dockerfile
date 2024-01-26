# Usa la imagen oficial de Ubuntu latest
FROM ubuntu:latest

# Actualiza el sistema e instala Nginx
RUN apt-get update && apt-get install -y nginx


# Copia tu archivo de configuración personalizado de Nginx al contenedor

COPY ./html/ /var/www/html/

# Exponer el puerto 80 para que Nginx pueda servir contenido web
EXPOSE 80

# Comando predeterminado para ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
