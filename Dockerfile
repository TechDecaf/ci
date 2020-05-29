FROM node:12-alpine

# INSTALL DEPENDENCIES
RUN apk add --no-cache --update python3 git jq curl docker bash ca-certificates wget
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk && \
    apk add glibc-2.28-r0.apk

RUN sh -c "$(curl -fsSL https://raw.github.com/techdecaf/tasks/master/install.sh)"

# INSTALL AWS CLI
RUN pip3 install awscli --upgrade

# TEST COMPONENTS
RUN python3 --version && \
    git --version && \
    jq --version && \
    curl --version && \
    tasks --version && \
    docker --version && \
    aws --version && \
    yarn --version && \
    pip3 --version && \
    bash --version && \
    node --version
