pipeline {
    agent any

parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    }

stages{
       stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }
        
        stage ("terraform plan") {
            steps {
                sh ('terraform plan') 
           }
        }
 stage('Approval') {
            when {
                not {
                    equals expected: true, actual: params.autoApprove
                }
            }


stage("Apply") {
            steps {
                sh ('terraform apply')
            }
        }

   }
}
