FROM langflowai/langflow:latest

# (optional) if you want to preload flows, copy them in here

# Langflow default port inside the container
EXPOSE 7860

# Make sure we bind to Render's port
ENV LANGFLOW_HOST=0.0.0.0

# Use $PORT if Render sets it, otherwise fall back to 7860
CMD ["bash", "-lc", "langflow run --host 0.0.0.0 --port ${PORT:-7860}"]
