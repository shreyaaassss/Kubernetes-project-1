# Use a lightweight official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependency requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY app.py .

# Expose the port the Flask app runs on (5001 according to app.py)
EXPOSE 5001

# Command to run the application
CMD ["python", "app.py"]
