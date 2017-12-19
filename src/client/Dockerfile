# Using official python runtime base image
FROM python:3.6

# Set the application directory
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt

# Copy our code from the current folder to /app inside the container
ADD . /app

# Service listens on port 8080.
EXPOSE 8080

# Define our command to be run when launching the container
CMD ["python3", "app.py"]


