export CURRENT_TAG="$npm_package_docker_repo/$npm_package_name:$npm_package_version"
export LATEST_TAG="$npm_package_docker_repo/$npm_package_name:latest"
# docker login
docker push $CURRENT_TAG
docker push $LATEST_TAG