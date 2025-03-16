# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir pygame

# Command to run the chess game (can be overridden)
CMD ["python", "ChessMain.py"]
