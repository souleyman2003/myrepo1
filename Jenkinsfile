pipeline {
    agent any  
    stages {
        stage("test") {
            steps {
                echo "hello world"
            }
        }
        stage("build") {
            steps {
                bat 'docker --version'
                //bat 'cd C:\ProgramData\Jenkins\.jenkins\workspace\testbuild '
                bat 'docker-compose up -d --build'
            }
        }
    }
    post {
        success {
            emailext (
                subject: "Notification de build Jenkins - Succès",
                body: "Le build de votre pipeline Jenkins s'est terminé avec succès.",
                to: "souleymaneanne1601@gmail.com",
            )
        }
        failure {
            emailext (
                subject: "Notification de build Jenkins - Échec",
                body: "Le build de votre pipeline Jenkins a échoué.",
                to: "souleymaneanne1601@gmail.com",
            )
        }
    }
}
