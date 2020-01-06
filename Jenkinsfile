pipeline{
    agent any
    stages{
        stage('Code PULL'){
	    steps{
	        echo 'Code PULL'
	    }
	}
	stage('Code BUILD'){
	    steps{
	        echo 'Code BUILD'
		sh 'make clean && make'
	    }
	}
	stage('Code TEST'){
	    steps{
	        echo 'Code TEST'
		sh './c_jenkins_test'
	    }
	}
    }
}
