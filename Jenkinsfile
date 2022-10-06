pipeline {
    agent any
    environment {
       PATH = "C:\\Program Files\\MATLAB\\R2022b\\bin;${PATH}"   // Windows agent
    }
    stages {
        stage('First') {
            steps {
                runMATLABCommand 'matlabroot'
                runMATLABCommand 'pwd'
            }
        }
        stage('Second') {
            steps {
                runMATLABTests(loggingLevel: 'verbose', testResultsJUnit: 'test-results/results.xml',
                               codeCoverageCobertura: 'code-coverage/coverage.xml')
            }
        }
    }
}
