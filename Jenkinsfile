pipeline {
    agent none
    stages {

        stage('代码编译'){
            agent any
            steps {
                echo "生成hugo基础镜像"
                sh 'docker build -t docker-hugo:v1 .'
                echo "镜像完成"
            }
        }

        stage('代码测试'){
            agent any
            steps {
                echo "测试……"
            }
        }

        stage('镜像上传'){
            agent any
            steps {
                sh "docker tag docker-hugo:v1 hub.jobcher.com/base/base-hugo:latest"
                sh "docker push hub.jobcher.com/base/base-hugo:latest"
            }
        }

        stage('部署'){
            agent any
            steps {
                echo "部署……"
            }
        }

    }
}
