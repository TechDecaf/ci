export NAME=$(cat package.json | jq .name -r)
export VERSION=$(cat package.json | jq .version -r)
export REPO=$(cat package.json | jq .docker.repo -r)
export CURRENT_TAG=$REPO/$NAME:$VERSION
export LATEST_TAG=$REPO/$NAME:latest