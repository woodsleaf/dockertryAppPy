# Use an official Python runtime as a parent image
FROM python:3.8-rc-slim
#but on 2019/10/08 in Debian 10 python v.2.7.16 and python3 v.3.7.3
#2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Set proxy server, replace host:port with values for your servers
#ENV http_proxy host:port
#ENV https_proxy host:port

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python3", "app.py"]
