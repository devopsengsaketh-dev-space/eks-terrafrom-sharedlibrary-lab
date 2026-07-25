@Library('terraform-shared-library') _


pipeline {

    agent any


    parameters {

        choice(
            name: 'ACTION',
            choices: ['PLAN','APPLY'],
            description: 'Terraform operation'
        )


        string(
            name: 'PLAN_BUILD_NUMBER',
            defaultValue: '',
            description: 'Required for APPLY'
        )

    }


    stages {


        stage('Checkout') {

            steps {

                checkout scm

            }

        }


        stage('Terraform Operation') {

            steps {


                script {


                    if(params.ACTION == 'PLAN') {


                        terraformPlan()


                    }


                    if(params.ACTION == 'APPLY') {


                        terraformApply(
                            params.PLAN_BUILD_NUMBER
                        )


                    }


                }

            }

        }


    }

}
