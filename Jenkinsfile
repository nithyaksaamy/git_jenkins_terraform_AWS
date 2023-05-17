pipeline {
    agent any
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
stage("Apply") {
            steps {
                sh ('terraform apply -input=false tfplan')
            }
        }

   }
}
