FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    libxcursor1 \
    libxrandr2 \
    libxi6 \
    libxinerama1 \
    libgl1-mesa-glx \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app

RUN chmod +x start.sh
CMD ["./start.sh"]
