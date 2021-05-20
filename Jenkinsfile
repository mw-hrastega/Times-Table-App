pipeline {
    agent any
    stages {
                    stage('Run MATLAB commands') {
                        steps {
                            runMATLABCommand 'ver'
                            runMATLABCommand 'pwd'
                        }
                    }
                    stage('Run MATLAB Tests') {
                    steps
                        {
                            runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                                           codeCoverageCobertura: 'code-coverage/coverage.xml')
                        }
                    }
                }
}
