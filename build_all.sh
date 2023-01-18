echo "Build all platforms"

sudo PLATFORM=x86_64 POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh
# sudo PLATFORM=i686 POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh
sudo PLATFORM=aarch64 POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh
# sudo PLATFORM=ppc64le POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh
# sudo PLATFORM=s390x POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh

