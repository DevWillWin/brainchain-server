FROM barichello/godot:4.2.2-headless

WORKDIR /app

COPY . .

EXPOSE 6005

CMD ["--headless", "--path", ".", "--script", "SERVER.gd"]
