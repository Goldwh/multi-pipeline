properties([pipelineTriggers([githubPush()])])
pipeline{
    agent any
    stages{
        stage('Code PULL'){
        when{
            anyOf{
                branch 'master';
                branch 'Cunit-test'
        }
        }
        steps{
            echo "branch=${env.BRANCH_NAME}"
            echo 'Code PULL'
        }
    }
        stage('Code BUILD'){
        when{
            anyOf{
                branch 'master';
                branch 'Cunit-test'
        }
        }
        steps{
            echo 'Code BUILD'
            sh 'make'
        }
    }
        stage('Unit TEST'){
        when{
            anyOf{
                branch 'master';
                branch 'Cunit-test'
        }
        }
        steps{
            echo 'Unit TEST'
            sh './main'
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
