FROM tensorflow/tensorflow:2.10.0-gpu
# Create a user jni
RUN useradd -ms /bin/bash jni
# Set the working directory to /home/jni
WORKDIR /home/jni
# Give jni user sudo permission
RUN echo "jni ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Install git
RUN apt-get update && apt-get install -y git

# Upgrade pip
RUN python -m pip install --upgrade pip

#  Copy requirements.txt to the container
COPY requirements.txt /home/jni
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
