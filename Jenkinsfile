// Declarative Pipeline
pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2023b\\bin;${PATH}"   // Windows agent
    // PATH = "/usr/local/MATLAB/R2023b/bin:${PATH}"   // Linux agent
    // PATH = "/Applications/MATLAB_R2023b.app/bin:${PATH}"   // macOS agent    
   }
    stages {
        stage('Run MATLAB Command') {
            steps {
               runMATLABCommand "disp('Hello World!')"
            }       
        }                
    } 
}
