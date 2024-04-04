pipeline 
{
  agent { node {label 'label1'} }
    stages {
        stage('Init')
        {
            steps{
                sh'''
            cd /home/centos/workspace/roboshop-terraform-job
            ls -ltrh
            pwd
            terraform init -reconfigure
            '''
            }
            
        }
        stage('Plan')
        {
            steps{
            sh'''
            cd /home/centos/workspace/roboshop-terraform-job
            ls -ltrh
            pwd
            terraform plan
            '''
            }

        }
}
    post{
        always{
            echo "I will run this action whether job success or not"
        }
        success{
            echo "I will run this action if the job only success"
        }
        failure{
            echo "I will run this action if the job only failure"
        }
    }
}
