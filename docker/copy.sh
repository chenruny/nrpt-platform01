#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20210908.sql ./mysql/db
cp ../sql/ry_config_20220114.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../nrpt-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy nrpt-gateway "
cp ../nrpt-gateway/target/nrpt-gateway.jar ./nrpt/gateway/jar

echo "begin copy nrpt-auth "
cp ../nrpt-auth/target/nrpt-auth.jar ./nrpt/auth/jar

echo "begin copy nrpt-visual "
cp ../nrpt-visual/nrpt-monitor/target/nrpt-visual-monitor.jar  ./nrpt/visual/monitor/jar

echo "begin copy nrpt-modules-system "
cp ../nrpt-modules/nrpt-system/target/nrpt-modules-system.jar ./nrpt/modules/system/jar

echo "begin copy nrpt-modules-file "
cp ../nrpt-modules/nrpt-file/target/nrpt-modules-file.jar ./nrpt/modules/file/jar

echo "begin copy nrpt-modules-job "
cp ../nrpt-modules/nrpt-job/target/nrpt-modules-job.jar ./nrpt/modules/job/jar

echo "begin copy nrpt-modules-gen "
cp ../nrpt-modules/nrpt-gen/target/nrpt-modules-gen.jar ./nrpt/modules/gen/jar

