FROM tensorflow/tensorflow:2.10.0-gpu
# Create a user jni
RUN useradd -ms /bin/bash jni
# Set the working directory to /home/jni
WORKDIR /home/jni
# Give jni user sudo permission
RUN echo "jni ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
