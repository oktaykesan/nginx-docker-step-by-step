# Nginx Docker Step-by-Step Tutorial

## Project Overview
This repository is a **comprehensive step-by-step guide to learning Docker and Nginx**. It demonstrates basic usage, custom configuration, reverse proxy setup, SSL self-signed certificates, and production-ready Dockerfile configurations. Perfect for beginners who want to understand Nginx containerization and deploy web services using Docker Compose.

##Project Structure 
nginx-docker-step-by-step/
├── 01-basic-nginx/           # Basic Nginx setup
├── 02-custom-config/         # Custom Nginx configuration
├── 03-reverse-proxy/         # Reverse proxy example
├── 04-ssl-self-signed/       # SSL with self-signed certificate
├── 05-production-dockerfile/ # Production-ready Dockerfile
├── start-all.sh             # Script to start all examples
├── .gitignore              # Git ignore rules
└── README.md               # This file

---
## Examples Overview

### 01-basic-nginx
**Simple Nginx setup**
- Uses `nginx:1.25-alpine` image
- Maps port `8080` on host to `80` in container
- Serves a basic HTML page with modern styling
- Includes health checks and networking

**Usage**
bash
cd 01-basic-nginx
docker-compose up -d

🌐 Open in browser: http://localhost:8080

##02-custom-config

Custom Nginx Configuration

- Uses a custom nginx.conf file
- Maps port 8081 on host
- Includes security headers and gzip compression
- Demonstrates configuration file mounting

#Usage:

cd 02-custom-config
docker-compose up -d

🌐 Open in browser: http://localhost:8081


##03-reverse-proxy

Reverse Proxy Setup

- Demonstrates basic reverse proxy configuration

- Maps port 8082 on host

- Proxies /api/ requests to external service (httpbin.org)

- Includes proper proxy headers and timeout settings

 
#Usage

cd 03-reverse-proxy
docker-compose up -d

##04-ssl-self-signed

Self-signed SSL certificate

 - HTTPS using self-signed certificate

 - Maps port 8443 on host

- Includes HTTP to HTTPS redirect

- Modern TLS configuration (TLS 1.2/1.3)

- Security headers for HTTPS

Setup SSL Certificate:

##Usage

cd 04-ssl-self-signed./create-ssl-cert.sh
docker-compose up -d

🔒 Open in browser: https://localhost:8443⚠️

Note: Accept self-signed certificate warning in browser.

##05-production-dockerfile

Production-ready Dockerfile example:

- Builds a custom Docker image with HTML content

- Maps port 8083 on host

- Includes health checks, security optimizations

- Proper file permissions and nginx user

- Gzip compression and caching headers


#Usage:
'''bash

cd 05-production-dockerfile
docker-compose up -d --build

🌐 Open in browser: http://localhost:8083

⚡ Quick Start - Run All Examples

- Use the provided script to start all examples with a single command:

# Clone the repository
git clone <your-repo-url>
cd nginx-docker-step-by-step

# Make script executable
chmod +x start-all.sh

# Start all containers
./start-all.sh

This will:

- Build and start all containers
- Show active containers with docker ps
- All services will be accessible on different ports

🛠️ Prerequisites

Docker 20.10+
Docker Compose 2.0+
OpenSSL (for SSL certificate generation)

🔧 Troubleshooting
Port Already in Use

# Check what's using the port
sudo lsof -i :8080

# Stop all containers
docker-compose down

  SSL Certificate Issues:

# Regenerate SSL certificate
cd 04-ssl-self-signed
rm -rf certs/
./create-ssl-cert.sh

   View Container Logs:
# View logs for specific service
docker-compose logs web

# Follow logs in real-time
docker-compose logs -f web

🎯 Learning Objectives
By completing this tutorial, you will learn:

✅ Basic Docker Compose configuration
✅ Nginx container deployment
✅ Custom configuration file mounting
✅ Reverse proxy setup and configuration
✅ SSL/TLS certificate implementation
✅ Production-ready Dockerfile creation
✅ Health checks and monitoring
✅ Security best practices
✅ Network configuration

 Contributing
- Feel free to submit issues, fork the repository, and create pull requests for any improvements.

 Author:
Oktay Keşan - Cloud Practitioner
📧 Email: oktaykesan@gmail.com
🔗 GitHub: @oktaykesan
