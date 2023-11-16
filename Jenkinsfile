pipeline {
    agent {
        kubernetes{
           '''
            apiVersion: v1
            kind: Pod
            metadata:
            name: dynamic-agents
            labels:
                app: dynamic-agents
            spec:
            containers:
            - name: git
            image: bitnami/git:latest
            command:
            - cat 
            tty: true
            - name: maven
            image: maven:3.8.3-adoptopenjdk-11
            command:
            - cat 
            tty: true
           '''
        }
    }
    stages {
        stage("Git Version") {
            steps {
                container("git"){
                    sh 'git --version'
                }
            }
        }
        stage("Maven Version") {
            steps {
                container("maven"){
                    sh 'mvn -version'
                }
            }
        }
    }
}