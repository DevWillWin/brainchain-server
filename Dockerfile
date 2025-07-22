FROM debian:bullseye-slim

# Install curl and unzip
RUN apt-get update && \
    apt-get install -y curl unzip && \
    rm -rf /var/lib/apt/lists/*

# Download and install Godot headless
RUN curl -LO https://downloads.tuxfamily.org/godotengine/4.4.1/Godot_v4.4.1-stable_linux_headless.64.zip && \
    unzip Godot_v4.4.1-stable_linux_headless.64.zip && \
    mv Godot_v4.4.1-stable_linux_headless.64 /usr/local/bin/godot && \
    chmod +x /usr/local/bin/godot

# Copy project files
COPY . /app
WORKDIR /app

# Start your server scene
CMD ["godot", "--headless", "--path", "/app", "--main-pack", "dummy.tscn"]
