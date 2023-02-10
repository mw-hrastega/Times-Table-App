// Declarative Pipeline
pipeline {
    agent any
    stages {
        stage('BuildAndTest') {
            matrix {
                agent any
                axes {
                    axis {
                        name 'MATLAB_VERSION'
                        values 'R2021b', 'R2022a', 'R2022b'
                    }
                }
                tools {
                    matlab "${MATLAB_VERSION}"
                }
                stages {
                    stage('Run MATLAB commands') {
                        steps {
                            runMATLABCommand 'ver, pwd'
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
