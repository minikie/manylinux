echo "Deploy all platforms"

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

build_id=$1
password=$2

sudo PLATFORM=x86_64 POLICY=manylinux2014 COMMIT_SHA=latest ./deploy.sh ${build_id} ${password}
# sudo PLATFORM=i686 POLICY=manylinux2014 COMMIT_SHA=latest ./deploy.sh ${build_id}
sudo PLATFORM=aarch64 POLICY=manylinux2014 COMMIT_SHA=latest ./deploy.sh ${build_id} ${password}
# sudo PLATFORM=ppc64le POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh
# sudo PLATFORM=s390x POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh

