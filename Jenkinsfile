pipeline {

    agent any

    stages {

        stage('代码编译'){
            steps {
                echo "生成hugo基础镜像"
                sh 'docker build -t docker-hugo:v1 .'
                echo "镜像完成"
            }
        }

        stage('代码测试'){
            steps {
                echo "测试……"
            }
        }

        stage('镜像上传'){
            steps {
                //要做的所有事情
                sh "docker tag docker-hugo:v1 hub.jobcher.com/base/base-hugo:latest"
                sh "docker push hub.jobcher.com/base/base-hugo:latest"
            }
        }

        stage('部署'){
            steps {
                //要做的所有事情
                echo "部署……"
            }
        }

    }
}
