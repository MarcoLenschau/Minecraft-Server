# Minecraft Server

A DevSecOps project for setting up and managing a Minecraft server.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)

## Requirements

- Docker
- Docker Compose 
- Git

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/Minecraft-Server.git
    cd Minecraft-Server
    ```

2. **Configure environment variables:**
    - Copy `.env.example` to `.env` and adjust settings as needed.

3. **Update the environment file reference in `docker-compose.yml`:**
    - Open `docker-compose.yml` and change the environment file path on line 11 from `.env.example` to `.env`.

4. **Start the server:**
    ```bash
    docker-compose up -d
    ```

5. **Access your Minecraft server:**
    - Connect using your server's IP and the configured port.

## Usage

- Stop the server:
  ```bash
  sudo docker-compose down
  ```
- View logs:
  ```bash
  sudo docker-compose logs 
  ```