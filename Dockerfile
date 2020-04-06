FROM node:10-alpine
LABEL mantainer="Tony Huynh <mr.tonyhuynh@gmail.com>"

# Install rsync and openssh-client
RUN apk --update --no-cache add rsync openssh-client git