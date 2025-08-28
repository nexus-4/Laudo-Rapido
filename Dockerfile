# Passo 1: Use uma imagem base do Ubuntu.
# É melhor usar uma imagem completa para ter todas as bibliotecas do sistema.
FROM ubuntu:22.04

# Evita que o instalador de pacotes peça inputs interativos durante o build
ENV DEBIAN_FRONTEND=noninteractive

# Passo 2: Instale as dependências do sistema.
# Isso inclui Python, pip e as bibliotecas essenciais para GUI (X11, OpenGL).
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libxext6 \
    libx11-6 \
    && apt-get clean

# Passo 3: Defina o diretório de trabalho.
WORKDIR /app

# Passo 4: Copie e instale as dependências Python.
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Passo 5: Copie o resto do código da sua aplicação.
COPY . .

# Passo 6: Comando para rodar a aplicação.
CMD ["python3", "processar.py"]