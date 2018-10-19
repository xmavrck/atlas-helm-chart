FROM openjdk:8-jdk-alpine
# Install required packages for installation
RUN apk add --no-cache \
    bash \
    su-exec \
    python 

# Define versions of apache atlas

# Add local bin archive
COPY apache-atlas-1.1.0-server.tar.gz /

# Unarchive
RUN set -x \
    && cd / \
    && tar -xzf apache-atlas-1.1.0-server.tar.gz \
    && rm apache-atlas-1.1.0-server.tar.gz


WORKDIR /apache-atlas-1.1.0

EXPOSE 21000

ENV PATH=$PATH:/apache-atlas-1.1.0/bin
CMD ["/bin/bash", "-c", "/apache-atlas-1.1.0/bin/atlas_start.py; tail -fF /apache-atlas-1.1.0/logs/application.log"]
