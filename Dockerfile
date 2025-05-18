# Use the official Python image as the base
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app

# Copy the Streamlit app into the container
COPY hello_world_app.py .

# Install Streamlit
RUN pip install --no-cache-dir streamlit

# Expose the port Streamlit uses
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "hello_world_app.py", "--server.enableCORS=false"]
