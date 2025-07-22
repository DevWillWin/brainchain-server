FROM ghcr.io/godotengine/godot:4.2.2-stable-headless

WORKDIR /app

COPY . .

EXPOSE 6005

CMD ["--headless", "--path", ".", "--script", "SERVER.gd"]
