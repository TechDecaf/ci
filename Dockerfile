FROM node:12-alpine

# INSTALL DEPENDENCIES
RUN apk add --no-cache --update python3 git jq curl docker
RUN sh -c "$(curl -fsSL https://raw.github.com/techdecaf/tasks/master/install.sh)"

# INSTALL AWS CLI
RUN pip3 install awscli --upgrade

# TEST COMPONENTS
RUN python3 --version \
    && git --version \
    && jq --version \
    && curl --version \
    && tasks --version \
    && docker --version \
    && aws --version \
    && yarn --version \
    && pip3 --version \
    && curl --version \
    && node --version
