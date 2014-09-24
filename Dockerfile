#
# DGG Dockerfile
#
# https://github.com/mikespook/DGG-ci
#

# Pull base image
FROM ubuntu:latest

# Add files
ADD init.sh /tmp/
ADD https://raw.github.com/progrium/gitreceive/master/gitreceive /usr/local/bin/
ADD https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz /tmp/go.tar.gz

# Set environment variables
ENV GOROOT /data/go
ENV GOPATH /data
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH
ENV GITUSER dgg

# Initialize & clean
RUN /tmp/init.sh && rm -rf /tmp/*

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
