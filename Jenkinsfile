pipeline{
    agent any
    stages{
        stage('Code PULL'){
	    when{

    		    branch 'dev'

	    }
	    steps{
	        echo 'Code PULL'
	    }
	}
	    stage('Code BUILD'){
        when{


                branch 'dev'
        
        }
	    steps{
	        echo 'Code BUILD'
		sh 'make clean && make'
	    }
	}
		stage('Unit TEST'){
        when{


                branch 'dev'
        
        }
	    steps{
	        echo 'Unit TEST'
		sh './c_jenkins_test'
	    }
	}
		stage('Package'){
        when{
                branch 'master'
        }
	    steps{
	        echo 'Package'
	    }
	}
		stage('Deploy TEST ENV'){
        when{
                branch 'master'
        }
	    steps{
	        echo 'Deploy TEST ENV'
	    }
	}
		stage('Auto API TEST'){
        when{
                branch 'master'
        }
	    steps{
	        echo 'Auto API TEST'
	    }
	}
    }
    post{
    success{
    	emailext(
    		subject: '${ENV, var="JOB_NAME"}-第${BUILD_NUMBER}次构建日志',
    		body: '${FILE,path="email.html"}',
    		to: "794918503@qq.com",
    	)
    }
    failure{
    	emailext(
    		subject: '${ENV, var="JOB_NAME"}-第${BUILD_NUMBER}次构建日志',
    		body: '${FILE,path="email.html"}',
    		to: "794918503@qq.com",
    	)
    }
    }
}
