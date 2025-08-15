FROM python:3.9-slim
# Usa una imagen ligera de Python 3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de la carpeta flask-app al contenedor
COPY . /app

# Instala dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Indica que la app usará el puerto 5000
EXPOSE 5000

# Ejecuta la app al iniciar el contenedor
CMD ["python", "app.py"]