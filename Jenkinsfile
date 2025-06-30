pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                
                echo "Result: ${currentBuild.result}"          // null, SUCCESS, FAILURE
                echo "Build number: ${currentBuild.number}"    // e.g. 42
                echo "Display name: ${currentBuild.displayName}"
                echo "PATH variable: ${params}" 
            }
        }
    }
}
