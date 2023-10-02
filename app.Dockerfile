# Basic app
FROM python:3.11-slim-bullseye

COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN apt-get update -y; apt-get install curl -y; pip install -r requirements.txt

# Run app
CMD ["python", "app.py"]