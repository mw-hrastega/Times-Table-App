pipeline {
    agent any
    stages {
        stage('First') {
            steps {
                runMATLABCommand 'exits'
                runMATLABCommand 'pwd'
            }
        }
        stage('Second') {
            steps {
                runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                               codeCoverageCobertura: 'code-coverage/coverage.xml')
            }
        }
    }
}
