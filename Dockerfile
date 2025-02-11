FROM python:3.12-slim

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /

COPY . .  # Copia tutti i file nella root del container

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "llmcord.py"]
