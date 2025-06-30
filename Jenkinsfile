pipeline {
    agent any


    parameters {
        string(name: 'USERNAME', defaultValue: 'guest', description: 'Your username')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'qa', 'prod'], description: 'Pick environment')
        booleanParam(name: 'DEBUG', defaultValue: true, description: 'Enable debug mode')
    }
    environment {
        // Optional: set Python path or virtualenv
        PATH = "/opt/homebrew/bin/:/Users/rishabh.si@browserstack.com/Desktop/Projects/jenkinsTuts/env:${env.PATH}"
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


        stage('Start the Flask Server'){
            steps{
                echo 'Starting Flask server...'
                sh '''
                    # Install dependencies if needed
                    # Start server in background
                    nohup python src/serv.py > flask.log 2>&1 &
                '''
            }
        }


        stage('Run UI Tests'){
             steps {
                echo 'Running Nightwatch + Cucumber tests...'
                sh '''
                    # Run tests
                    npm install
                    npx nightwatch
                '''
            }
        }

        stage('Save Reports') {
            steps {
                echo 'Archiving test reports...'
                // Adjust this path if needed
                archiveArtifacts artifacts: 'reports/**', fingerprint: true
            }
        }
    }
}
