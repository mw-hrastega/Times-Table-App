// Declarative Pipeline
pipeline {
    environment {
        MLM_LICENSE_TOKEN = credentials('matlab-token')
   }
   agent any
   tools {
       matlab 'Latest'
   }
    stages {
        stage('Run MATLAB Command') {
            steps {
               runMATLABCommand(command: 'matlabroot')
            }       
        }                
    } 
}
