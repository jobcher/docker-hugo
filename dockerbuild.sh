#!/bin/bash
echo "生成hugo基础镜像"
docker build -t docker-hugo:v1 .
echo "镜像完成"
echo "上传自私有仓库"
docker tag docker-hugo:v1 hub.jobcher.com/base/base-hugo:latest
docker push hub.jobcher.com/base/base-hugo:latest
echo "上传完成"