// Scripted Pipeline
node {
    def matlabver
    stage('Run MATLAB Command') {
        matlabver = tool 'R2022b'
        if (isUnix()) {
            env.PATH = "${matlabver}/bin:${env.PATH}"   // Linux or macOS agent
        } else {
            env.PATH = "${matlabver}\\bin;${env.PATH}"   // Windows agent
        }     
        runMATLABCommand 'myscript'
    }
}
