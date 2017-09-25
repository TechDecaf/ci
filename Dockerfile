FROM python:3.3-slim

# INSTALL DEPENDENCIES
RUN apt-get update -y && apt-get install -y -q --no-install-recommends jq curl wget git

# INSTALL NODE
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 6.10.3

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# INSTALL AWS CLI
RUN pip install awscli

# TEST COMPONENTS
RUN jq --version \
    && node --version \
    && npm --version \
    && git --version \
    && aws --version \
    && curl --version \
    && wget --version