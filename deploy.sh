
build_id=$1

function check_var {
    if [ -z "$1" ]; then
        echo "required variable not defined"
        exit 1
    fi
}

#!/bin/bash
tag="montrixdev/${POLICY}_${PLATFORM}"
check_var ${build_id}
# build_id=$(git show -s --format=%cd-%h --date=short ${COMMIT_SHA})

# docker login -u $QUAY_USERNAME -p $QUAY_PASSWORD quay.io
docker login -u montrixdev

docker tag ${tag}:${COMMIT_SHA} ${tag}:${build_id}
docker tag ${tag}:${COMMIT_SHA} ${tag}:latest
docker push ${tag}:${build_id}
docker push ${tag}:latest
