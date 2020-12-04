// Scripted Pipeline
node {
    def matlabver
    stage('Run MATLAB Command') {
        // Specify the matlabroot/bin folder for the desired MATLAB version
        matlabver = tool 'R2020b'
        if (isUnix()){
            env.PATH = "${matlabver}/bin:${env.PATH}"   // Linux or macOS agent
        }else{
            env.PATH = "${matlabver}\\bin;${env.PATH}"   // Windows agent
        }     
        runMATLABCommand 'pwd,matlabroot'
    }
}
