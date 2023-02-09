// Declarative Pipeline
pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2022b\\bin;${PATH}"   // Windows agent
    // PATH = "/usr/local/MATLAB/R2022b/bin:${PATH}"   // Linux agent
    // PATH = "/Applications/MATLAB_R2022b.app/bin:${PATH}"   // macOS agent    
   }
    stages {
        stage('Run MATLAB Command') {
            steps {
               runMATLABCommand "disp('Hello World!')"
            }       
        }                
    } 
}
