
# Usa la imagen base de PHP con soporte para Nginx
FROM php:8.1-fpm

# Instala Nginx y otras dependencias necesarias
RUN apt-get update && apt-get install -y \
    nginx \
    && docker-php-ext-install opcache

# Copia el archivo de configuración de Nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copia el código fuente de la aplicación al contenedor
COPY ./src /var/www/html

# Cambia permisos de los archivos para que Nginx pueda acceder
RUN chown -R www-data:www-data /var/www/html

# Expone el puerto 80 para el servidor
EXPOSE 80

# Copia el script de inicio para lanzar PHP y Nginx
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

# Comando para iniciar el contenedor
CMD ["/start.sh"]
