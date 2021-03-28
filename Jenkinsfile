pipeline {
    agent {
        docker{
            image '00rion/ruby-web-agent'
        }
    }

    stages {
        stage('Preparation'){
            steps {
                sh 'cd web && bundle install'
            }
        }
        
        stage('Testing') {
            steps {
                sh 'cd web && cucumber -p jenkins'
            }
        }
        stage('UAT'){
            steps{
                echo 'Aguardando testes de aceitação.'
                input message: 'Prosseguir para produção?'
            }
        }
        stage('Prod'){
            steps {
                allure includeProperties: false, jdk: '', results: [[path: 'web/logs']]
            }
        }
    }
    post {
        always{
            echo 'todo'
        }
    }
}
