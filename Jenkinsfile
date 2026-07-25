pipeline {

    agent any


    parameters {

        string(
            name: 'PLAN_BUILD_NUMBER',
            defaultValue: '',
            description: 'Terraform plan build number'
        )

    }


    stages {


        stage('Checkout') {

            steps {

                git(
                    branch: 'main',
                    credentialsId: 'github-token',
                    url: 'https://github.com/devopsengsaketh-dev-space/eks-terraform-lab.git'
                )

            }

        }


        stage('Download Terraform Plan') {

            steps {

                copyArtifacts(
                    projectName: 'terraform-plan-job',
                    selector: specific("${PLAN_BUILD_NUMBER}"),
                    filter: 'tfplan'
                )

            }

        }


        stage('Terraform Init') {

            steps {

                sh '''
                terraform init
                '''

            }

        }


        stage('Terraform Apply') {

            steps {

                sh '''
                terraform apply tfplan
                '''

            }

        }


    }

}
