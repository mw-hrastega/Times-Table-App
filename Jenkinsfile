// Declarative Pipeline
pipeline {
   agent any
   tools {
       matlab 'R2023b'
   }
    stages {
        stage('Run MATLAB Command') {
            steps {
               runMATLABCommand(command: 'myscript')
            }       
        }                
    } 
}
