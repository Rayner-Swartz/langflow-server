FROM python:3.11-slim

# Install system deps
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*

# Install Langflow
RUN pip install --upgrade pip && pip install langflow

# Expose Langflow port
EXPOSE 7860

# Start Langflow
CMD ["langflow", "--host", "0.0.0.0", "--port", "7860"]
