// This jenkinsfile is used to run CI/CD on my local (Windows) box, no VM's needed.
// This jenkinsfile is used to run CI/CD on my local (Windows) box, no VM's needed.

pipeline {

  agent any

   environment {
    DOCKER_IMAGE = 'fahmisar/ensf-400-term-project:latest'
    SONAR_TOKEN = credentials('SONAR_TOKEN')
   }

  stages {
    // Stage 1: Build container based on gradle app
    stage("Build Container"){
      steps{
        script{
          echo "Building Docker Container of Gradle App..."
          sh "docker build -t $DOCKER_IMAGE ." 
        }
      }
    }

    // Stage 2: Run Unit Test
    stage('Unit Tests') {
      steps {
        sh './gradlew test'
      }
      post {
        always {
          junit 'build/test-results/test/*.xml'
        }
      }
    }

    // Stage 3: Run SonarQube Static Analysis
    stage('SonarQube Analysis') {
        steps {
            script {
              echo "Running SonarQube Static Analysis..."
              // Run SonarQube analysis using Gradle with Sonar plugin
              sh """./gradlew sonarqube -Dsonar.login=${SONAR_TOKEN} -Dsonar.host.url=http://localhost:9000"""
            }
        }
        post {
          always {
            echo "SonarQube Analysis completed."
          }
        }
    }    

  }
}


