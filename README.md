# Minecraft Server

A DevSecOps project for setting up and managing a Minecraft server.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Quickstart](#quickstart)
3. [Usage](#usage)

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
docker-compose up -d
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