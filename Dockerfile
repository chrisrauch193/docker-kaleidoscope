# Use a base RHEL 9 image
FROM registry.access.redhat.com/ubi9/ubi:9.3-1552

# Set non-interactive environment
ENV container=docker

# Update package lists and install wget and equivalent glibc dependencies
RUN yum update -y && yum install -y wget

# Download the Kaleidoscope package for RHEL
RUN wget https://downloads.wildlifeacoustics.com/kaleidoscope-5.6.6-1.x86_64.rpm -P /tmp

# Install the Kaleidoscope package
RUN yum install -y /tmp/kaleidoscope-5.6.6-1.x86_64.rpm

# Set the entrypoint to execute the kaleidoscope-cli and accept license 
ENTRYPOINT ["/bin/bash", "-l", "-c", "kaleidoscope-cli --accept-license"]
