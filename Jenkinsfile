pipeline{

    agent any

// uncomment the following lines by removing /* and */ to enable
   tools{
       nodejs 'nodejs' 
    }
   

    stages{
        stage('build-the-app'){
            steps{
                echo 'this is the build job'
                sh 'npm install'
            }
        }
        stage('test-the-job'){
            steps{
                echo 'this is the test job'
                sh 'npm test'
            }
        }
        stage('package-the-job'){
            steps{
                echo 'this is the package job'
                sh 'npm run package'
            }
        }
    }
    
    post{
        always{
            echo 'this pipeline has completed...'
        }
        
    }
    
}
