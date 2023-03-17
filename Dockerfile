# Specify the base image that we want to use
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file to the container
COPY req.txt .

# Install the dependencies using pip
RUN pip install --no-cache-dir -r req.txt

# Copy the rest of the application files to the container
COPY . .

# Expose the port that the application will be listening on
EXPOSE 8000

# Run the application when the container starts
CMD ["python", "app/main.py"]
