# Use official Godot headless version
FROM barichain/godot:4.4.1-stable

# Set working directory
WORKDIR /app

# Copy everything from your repo
COPY . .

# Expose the port you are using (example: 6005)
EXPOSE 6005

# Run the Godot server scene in headless mode
CMD ["--headless", "--main-pack", "your_project.pck"]
