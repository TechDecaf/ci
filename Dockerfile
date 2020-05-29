FROM node:12-alpine

# INSTALL DEPENDENCIES
LABEL "com.azure.dev.pipelines.agent.handler.node.path"="/usr/local/bin/node"

RUN apk add --no-cache --update python3 git jq curl docker bash sudo shadow

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
    sudo --version && \
    node --version
