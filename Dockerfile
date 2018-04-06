FROM node:8.11-alpine

# INSTALL DEPENDENCIES
RUN apk add --no-cache --update python3 git jq curl

# INSTALL AWS CLI
RUN pip3 install awscli --upgrade

# TEST COMPONENTS
RUN python3 --version \
    && jq --version \
    && aws --version \
    && npm --version \
    && pip3 --version \
    && curl --version \
    && node --version
