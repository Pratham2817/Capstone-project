# Project 8 - Build and Run Docker App Locally

## Goal

Practice container deployment using Docker by building and running a web application inside a Docker container.

## Project Overview

This project demonstrates how to:

- Create a Dockerfile
- Build a Docker image
- Run a Docker container locally
- Serve a custom web application using Nginx
- Access the application through a web browser

## Technologies Used

- Docker
- Nginx
- HTML
- Linux

## Project Structure

```text
project8/
├── Dockerfile
├── index.html
└── README.md
```

## Dockerfile

```dockerfile
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```

## Build Docker Image

```bash
docker build -t project8-web .
```

## Run Docker Container

```bash
docker run -d --name project8-container -p 8080:80 project8-web
```

## Verify Running Container

```bash
docker ps
```

Expected output:

```text
project8-container
0.0.0.0:8080->80/tcp
```

## Test Application

Using browser:

```text
http://localhost:8080
```

Using terminal:

```bash
curl http://localhost:8080
```

## Output

The application displays:

- Docker Project 8
- Build and Run Docker App Locally
- Successfully deployed a containerized web application using Docker
- Created by Pratham Sharma

## Screenshots

### Screenshot 1
Docker image build

```bash
docker build -t project8-web .
```

### Screenshot 2
Running Docker container

```bash
docker ps
```

### Screenshot 3
Application verification

```bash
curl http://localhost:8080
```

### Screenshot 4
Browser output showing the deployed web page

## Result

Successfully built a Docker image, deployed a container locally, and served a custom web application using Nginx. The application was accessible through both a web browser and terminal verification.
