# Usamos una imagen base de Python
FROM python:3.9-slim

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo de requerimientos (si tienes dependencias) o puedes omitir esta línea si no las necesitas
COPY requirements.txt requirements.txt

# Instalamos las dependencias
RUN pip install -r requirements.txt

# Copiamos el código de la aplicación al contenedor
COPY . .

# Exponemos el puerto 5000 para Flask
EXPOSE 5000

# Comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]
