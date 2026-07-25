pipeline {

    agent any


    environment {

        AWS_REGION = "ap-south-1"

    }


    stages {


        stage('Checkout') {

            steps {

                git(
                    branch: 'main',
                    credentialsId: 'github-token',
                    url: 'https://github.com/devopsengsaketh-dev-space/eks-terrafrom-sharedlibrary-lab.git'
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


        stage('Terraform Validate') {

            steps {

                sh '''
                terraform validate
                '''

            }
        }


        stage('Terraform Plan') {

            steps {

                sh '''
                terraform plan -out=tfplan
                '''

            }
        }


        stage('Archive Plan') {

            steps {

                archiveArtifacts artifacts: 'tfplan',
                fingerprint: true

            }
        }

    }

}
