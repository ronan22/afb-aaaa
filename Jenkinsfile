pipeline {
  agent any
  stages {
    stage('test 1') {
      steps {
        parallel(
          "test 1": {
            sh 'ping -c 1 8.8.8.8'
            
          },
          "test 2": {
            sh 'ping -c 2 8.8.8.8'
            sh 'ping -c 3 8.8.8.8'
            
          }
        )
      }
    }
    stage('test end') {
      steps {
        sh 'ping -c 4 8.8.8.8'
      }
    }
  }
}