pipeline {
    agent any


    parameters {
        string(name: 'USERNAME', defaultValue: 'guest', description: 'Your username')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'qa', 'prod'], description: 'Pick environment')
        booleanParam(name: 'DEBUG', defaultValue: true, description: 'Enable debug mode')
    }


    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'

                echo "Result: ${currentBuild.result}"          // null, SUCCESS, FAILURE
                echo "Build number: ${currentBuild.number}"    // e.g. 42
                echo "Display name: ${currentBuild.displayName}"    


                // Accessing parameters passed during running job
                echo "Username: ${params.USERNAME}"
                echo "Environment: ${params.ENVIRONMENT}"
                echo "Debug mode: ${params.DEBUG}"
            }
        }
    }
}
