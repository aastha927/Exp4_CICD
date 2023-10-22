# Use the official Ubuntu 20.04 LTS as the base image
FROM ubuntu:20.04

# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install essential packages
RUN apt-get update -y && \
    apt-get install -y \
    curl \
    wget \
    vim \
    && apt-get clean

# Set the default working directory
WORKDIR /app

# Define the default command when the container starts (optional)
CMD ["/bin/bash"]
