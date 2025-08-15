from flask import Flask

# Inicializa la app Flask
app = Flask(__name__)

# Define la ruta raíz (/) que devolverá el JSON
@app.route('/')
def hello():
    return {"message": "Hello from the Flask App!"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)  # Escucha en todas las interfaces en el puerto 5000