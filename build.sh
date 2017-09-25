source _source.sh
echo building $CURRENT_TAG
docker build --tag $CURRENT_TAG --tag $LATEST_TAG .