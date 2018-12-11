export CURRENT_TAG="$npm_package_docker_repo/$npm_package_name:$npm_package_version"
export LATEST_TAG="$npm_package_docker_repo/$npm_package_name:latest"
echo building $CURRENT_TAG
docker build --tag $CURRENT_TAG --tag $LATEST_TAG .