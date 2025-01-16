
# Entorno de desarrollo PHP con Docker y Nginx

## Requisitos
- Docker instalado en el sistema
- Conexión a internet para descargar imágenes de Docker

## Instrucciones de despliegue
1. Clona este repositorio en tu máquina:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd PHP_Docker_Enviroment
   ```

2. Construye la imagen del contenedor:
   ```bash
   docker build -t miapp-php .
   ```

3. Inicia el contenedor:
   ```bash
   docker run -d -p 8080:80 miapp-php
   ```

4. Abre tu navegador y accede a:
   ```
   http://localhost:8080
   ```

## Estructura del Proyecto
- `Dockerfile`: Configuración del contenedor
- `nginx.conf`: Configuración del servidor Nginx
- `src/`: Código fuente de la aplicación
- `start.sh`: Script de inicio del contenedor

## Notas
- Modifica el archivo `src/index.php` para incluir tu aplicación PHP personalizada.
- Si necesitas una base de datos, puedes agregar otro contenedor (como MySQL) usando `docker-compose`.
