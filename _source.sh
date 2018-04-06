NPM_PACKAGE=$(cat package.json)
export NAME=$(echo $NPM_PACKAGE | jq .name -r)
export VERSION=$(echo $NPM_PACKAGE | jq .version -r)
export REPO=$(echo $NPM_PACKAGE | jq .docker.repo -r)
export CURRENT_TAG="$REPO/$NAME:$VERSION"
export LATEST_TAG="$REPO/$NAME:latest"
