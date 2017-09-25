source _source.sh
# docker login
docker push $CURRENT_TAG
docker push $LATEST_TAG