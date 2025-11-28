# Use the official Langflow image
FROM langflowai/langflow:latest

# Langflow default port inside the container (not critical for Render, but fine)
EXPOSE 7860

# Make sure we bind to all interfaces
ENV LANGFLOW_HOST=0.0.0.0

# Use $PORT if Render sets it, otherwise fall back to 7860 (for local runs)
CMD ["bash", "-lc", "python -m langflow run --host 0.0.0.0 --port ${PORT:-7860}"]
