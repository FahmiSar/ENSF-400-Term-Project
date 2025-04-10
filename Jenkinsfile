// This jenkinsfile is used to run CI/CD on my local (Windows) box, no VM's needed.
// This jenkinsfile is used to run CI/CD on my local (Windows) box, no VM's needed.

pipeline {

  agent any

   environment {
    DOCKER_IMAGE = 'fahmisar/ensf-400-term-project:latest'
   }

  stages {
    // Stage 1: Build container based on gradle app
    stage("Build Container"){
      steps{
        script{
          echo "Building Docker Container of Gradle App..."
          sh "docker build -t $DOCKER_IMAGE"
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


  }
}


