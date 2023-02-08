// Declarative Pipeline
pipeline {
   agent any
   tools {
       matlab 'R2022b'
   }
    stages {
        stage('Run MATLAB Command') {
            steps {
               runMATLABCommand 'myscript'
            }       
        }                
    } 
}
