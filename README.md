# Flask Application with Docker & Kubernetes

A simple Flask web application containerized using Docker and deployed on Kubernetes (Minikube).

## Tech Stack

- Python 3
- Flask
- Docker
- Kubernetes
- Minikube

## Project Structure

```
.
├── app.py
├── Dockerfile
├── requirements.txt
├── deployment.yml
├── service.yml
└── README.md
```

## Steps Performed

1. Created a Flask web application.
2. Created a Python virtual environment.
3. Installed project dependencies.
4. Built a Docker image.
5. Ran and tested the container locally.
6. Loaded the Docker image into Minikube.
7. Created a Kubernetes Deployment with 2 replicas.
8. Exposed the application using a NodePort Service.
9. Accessed the application through the browser.

## Build Docker Image

```bash
docker build -t shreyayys/flask-app:latest .
```

## Run Docker Container

```bash
docker run -d -p 5001:5001 shreyayys/flask-app:latest
```

## Load Image into Minikube

```bash
minikube image load shreyayys/flask-app:latest
```

## Deploy to Kubernetes

```bash
kubectl apply -f deployment.yml
kubectl apply -f service.yml
```

## Verify Resources

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```

## Access the Application

```bash
minikube service flask-app-service
```

## Cleanup

```bash
kubectl delete deployment basic-flask-app
kubectl delete service flask-app-service
```

## Learning Outcomes

- Docker image creation
- Docker container execution
- Kubernetes Pods
- Deployments
- ReplicaSets
- Labels & Selectors
- NodePort Services
- Minikube
- Basic Kubernetes networking