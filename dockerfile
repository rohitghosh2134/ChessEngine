# Use an official Python runtime as a parent image
FROM python:latest

# Install dependencies
RUN apt-get update && apt-get install -y python3 python3-pip xvfb

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir pygame

# Run ChessMain.py with virtual display
CMD xvfb-run --auto-servernum python ChessMain.py