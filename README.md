# nginx-docker-step-by-step

## Project Overview
This repository is a step-by-step guide to learning Docker and Nginx. It demonstrates basic usage, custom configurations, reverse proxy setup, SSL self-signed certificates, and production-ready Dockerfile configurations. The goal is to help beginners understand Nginx containerization and deploy a simple web service using Docker Compose.

## 01-basic-nginx
This example shows the simplest setup:
- Runs an Nginx container using the `nginx:alpine` image
- Maps port 8080 on the host to port 80 in the container
- Serves a basic HTML page from the local `html` directory

### Usage
1. Navigate to the folder:
```bash
cd ~/nginx-docker-step-by-step/01-basic-nginx
# nginx-docker-step-by-step

## 02-Start the container:
```bash
 docker-compose up

## 03-Open your browser and go to http://localhost:8080 

Folder Structure
```css
01-basic-nginx/
├─ docker-compose.yml
└─ html/
   └─ index.html

Next Steps

Other folders in the repository demonstrate:

02-custom-config → Custom Nginx configuration

03-reverse-proxy → Reverse proxy setup

04-ssl-self-signed → Self-signed SSL configuration

05-production-dockerfile → Production-ready Dockerfile

Each folder can be run independently to practice Docker and Nginx features step by step.

         Author://Oktay Keşan
Aspiring Cloud Engineer 
