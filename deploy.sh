
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

build_id=$1

#!/bin/bash
tag="montrixdev/${POLICY}_${PLATFORM}"
# build_id=$(git show -s --format=%cd-%h --date=short ${COMMIT_SHA})

echo "dockerhub login ( montrixdev )..."
# docker login -u $QUAY_USERNAME -p $QUAY_PASSWORD quay.io
docker login -u montrixdev

docker tag ${tag}:${COMMIT_SHA} ${tag}:${build_id}
docker tag ${tag}:${COMMIT_SHA} ${tag}:latest
docker push ${tag}:${build_id}
docker push ${tag}:latest
