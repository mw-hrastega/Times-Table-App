pipeline {
    agent any
    stages {
        stage('BuildAndTest') {
            matrix {
                axes {
                    axis {
                        name 'MATLAB_VERSION'
                        values 'R2023b', 'R2024a', 'R2024b'
                    }
                }
                tools {
                    matlab "${MATLAB_VERSION}"
                }
                stages {
                    stage('Run MATLAB commands') {
                        steps {
                            runMATLABCommand(command: 'ver, pwd')
                        }
                    }
                    stage('Run MATLAB Tests') {
                        steps {
                            runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                                           codeCoverageCobertura: 'code-coverage/coverage.xml')
                        }
                    }
                }
            }
        }
    }
}
