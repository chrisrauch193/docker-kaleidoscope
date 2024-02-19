# Use a base ubuntu image
FROM ubuntu:latest

# Set non-interactive environment
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install wget and glibc dependecies
RUN apt-get update && apt-get install -y wget libfftw3-single3 libpq5 libcurl4 libgtk-3-0 libpulse0

# Download the Kaleidoscope package
RUN wget https://downloads.wildlifeacoustics.com/kaleidoscope-5.6.5-ubuntu-22.deb -P /tmp

# Install the Kaleidoscope package
RUN dpkg -i /tmp/kaleidoscope-5.6.5-ubuntu-22.deb

# Set the entrypoint to bash
ENTRYPOINT ["/bin/bash"]

