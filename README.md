# Minecraft Server

A DevSecOps project for setting up and managing a Minecraft server.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Quickstart](#quickstart)
3. [Usage](#usage)
4. [Testing] (#testing)

## Prerequisites

- Docker
- Docker Compose 
- Git

## Quickstart

### Clone the repository

```bash
git clone https://github.com/MarcoLenschau/Minecraft-Server.git
```

### Change the directory

```bash
cd Minecraft-Server
```

### Create .env file

```bash
mv example.env production.env
```

**Important:** After renaming the file:
1. Open `production.env` and enter your own values

### Start the Container

```bash
docker-compose up -d --build
```

### How to access the App

Connect using your server's IP and the configured port.

## Usage

- Stop the server:
  ```bash
  sudo docker-compose down
  ```
- View logs:
  ```bash
  sudo docker-compose logs 
  ```

## Testing 

```bash
sudo apt install python3-pip -y
```

```bash
pip install mcstatus
```

```bash
python3 -m mcstatus localhost:9000 status
```

```bash
python3 -m mcstatus localhost:9000 ping
```

```bash
python3 -m mcstatus localhost:9000 query
```