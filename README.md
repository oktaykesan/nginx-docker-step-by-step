# nginx-docker-step-by-step

## Project Overview
This repository is a **step-by-step guide to learning Docker and Nginx**. It demonstrates basic usage, custom configuration, reverse proxy setup, SSL self-signed certificates, and production-ready Dockerfile configurations. The goal is to help beginners understand Nginx containerization and deploy a simple web service using Docker Compose.

---

## Folder Structure & Examples

### 01-basic-nginx
**Simple Nginx setup**
- Runs an Nginx container using `nginx:alpine`
- Maps port `8080` on host to `80` in container
- Serves a basic HTML page

**Usage**
```bash
cd 01-basic-nginx
docker-compose up -d

Open in browser: http://localhost:8080

##02-custom-config
- Custom Nginx configuration example

- Uses a custom .conf file for Nginx

- Maps port 8081 on host

#Usage:

cd 02-custom-config
docker-compose up -d

- Open in browser: http://localhost:8081


##03-reverse-proxy

-- Reverse Proxy setup

- Demonstrates basic reverse proxy configuration

- Maps port 8082 on host
 
#Usage

cd 03-reverse-proxy
docker-compose up -d

##04-ssl-self-signed

Self-signed SSL certificate

 - HTTPS using self-signed certificate

 - Maps port 8443 on host

#Usage

   cd 04-ssl-self-signed
   docker-compose up -d

Open in browser: https://localhost:8443
Note: Accept self-signed certificate warning in browser.

##05-production-dockerfile

Production-ready Dockerfile example:

- Builds a custom Docker image with HTML content

- Maps port 8083 on host

#Usage:
'''bash

cd 05-production-dockerfile
docker-compose up -d

Open in browser: http://localhost:8083

###Start All Examples Script

Run all 5 examples with a single command using the provided script:

cd nginx-docker-step-by-step
./start-all.sh

This will:

- Build and start all containers

- Show active containers with docker ps

##Summary

- Each folder demonstrates a different Nginx/Docker feature.

- All examples are independent, allowing step-by-step practice.

- start-all.sh simplifies running all examples together.

- Perfect for beginners to learn Docker + Nginx and showcase on GitHub.

               ##Author

Oktay Keşan –  Cloud Practitioner
GitHub: oktaykesan

         Author://Oktay Keşan
Aspiring Cloud Engineer 
