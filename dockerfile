# Use Langflow’s official lightweight image
FROM langflowai/langflow:latest

# Expose port
EXPOSE 7860

# Start Langflow server
CMD ["langflow", "--host", "0.0.0.0", "--port", "7860"]
