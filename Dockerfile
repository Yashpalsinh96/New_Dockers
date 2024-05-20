
# Use an official Python runtime as a base image
FROM python:3.9

# Set environment variables
ENV PYTHONUNBUFFERED =1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define the command to run the application
CMD ["python", "manage.py", "runserver"]