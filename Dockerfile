# Use Godot 4.4.1 stable headless Linux
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget unzip libxrandr2 libxinerama1 libxcursor1 libxi6 libgl1-mesa-glx libglib2.0-0 ca-certificates && \
    apt-get clean

# Download Godot headless
RUN wget https://downloads.tuxfamily.org/godotengine/4.4.1/Godot_v4.4.1-stable_linux_headless.64.zip && \
    unzip Godot_v4.4.1-stable_linux_headless.64.zip && \
    mv Godot_v4.4.1-stable_linux_headless.64 /usr/local/bin/godot && \
    chmod +x /usr/local/bin/godot

# Set working directory
WORKDIR /app

# Copy your Godot project files
COPY . /app

# Expose the port your server listens on
EXPOSE 8080

# Run the headless server
CMD ["godot", "--headless", "--server", "--port", "8080", "--main-pack", "your_game.pck"]
