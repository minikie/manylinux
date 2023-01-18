echo "Build and Deploy all platforms"

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

build_id=$1
password=$2

./build_all.sh
./deploy_all_ymd_pw.sh ${build_id} ${password}