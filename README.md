# Hello Kubernetes Flask App

A simple Flask application that serves a greeting and includes a health check route.

## Prerequisites

- Python 3.8+
- pip (Python package installer)

## Installation

Install the required dependencies:

```bash
pip install -r requirements.txt
```

## Running the Application

Start the Flask development server:

```bash
python app.py
```

The application will start on `http://localhost:5000`.

## API Endpoints

- **Root Route (`/`)**: Returns a plain text greeting message.
  ```bash
  curl http://localhost:5000/
  # Output: hello kubernetes
  ```

- **Health Check Route (`/health`)**: Returns a JSON object indicating the application's health status.
  ```bash
  curl http://localhost:5000/health
  # Output: {"status":"healthy"}
  ```
