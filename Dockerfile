#PAS0 1:Utilizamos una imagen base oficial de Python
FROM python:3.12-slim-trixie
#PASO 2:Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app
#PASO 3: Copiamos el requeriments.txt
COPY requirements.txt /app
#PASO 4: Instalar las dependencias
RUN pip install -r requirements.txt
#PASO 5: Copiamos los archivos del proyecto al contenedor
COPY . /app
#PASO 6: Ejecutamos la aplicacion
CMD [ "python","app.py"]
