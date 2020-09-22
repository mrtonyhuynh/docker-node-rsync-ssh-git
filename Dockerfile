FROM node
LABEL mantainer="Tony Huynh <mr.tonyhuynh@gmail.com>"

# Install rsync and openssh-client
# RUN apk --update --no-cache add rsync openssh-client git
RUN apt-get update && apt-get install -y \
    bash \
    git \
    openssh-client \
    rsync

# Remove Cache
RUN rm -rf /tmp/* && \
    rm -rf /var/cache/*
