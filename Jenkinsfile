pipeline {

    agent any

    stages {

        stage('代码编译'){
            steps {
                echo "编译……"
                sh 'pwd && ls -alh'
                sh 'ifconfig'
            }
        }

        stage('代码测试'){
            steps {
                echo "测试……"
            }
        }

        stage('打包'){
            steps {
                //要做的所有事情
                echo "打包……"
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
