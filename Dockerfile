FROM node:lst
LABEL mantainer="Tony Huynh <mr.tonyhuynh@gmail.com>"

# Install rsync and openssh-client
# RUN apk --update --no-cache add rsync openssh-client git
RUN apt-get update && apt-get install -y \
    rsync \
    git \
    openssh-client

# Remove Cache
RUN rm -rf /tmp/* && \
    rm -rf /var/cache/*
