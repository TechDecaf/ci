# TechDecaf CI docker build

- [TechDecaf CI docker build](#techdecaf-ci-docker-build)
  - [Included Components](#included-components)
  - [Use](#use)
  - [Build / Deploy Tasks](#build--deploy-tasks)

## Included Components

TechDecaf CI runs an node 12-alpine base with these additional components

`[python3 git jq curl docker bash ca-certificates wget glibc]`

## Use

`docker pull techdecaf/ci:latest` - use the latest stable build:
`docker pull techdecaf/ci:<version>` - pull a specific version

> Note: you can find all deployed versions on [docker hub](https://hub.docker.com/r/techdecaf/ci/)

## Build / Deploy Tasks

tasks requires the use of the [tasks cli tool](https://github.com/techdecaf/tasks)

- `tasks run build` - test and build
- `tasks run deploy` - deploy

[![TechDecaf](https://images.techdecaf.com/fit-in/150x/techdecaf/logo_full.png)](https://techdecaf.com)
