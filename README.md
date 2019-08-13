# Hybrid-Cloud-based-CICD
_________
## Objectives:
Write a CI/CD engine that spans Azure and AWS: It builds on one Cloud and deploys and runs on the other. You can pick the coding language, the Web site tech stack, and the CI/CD toolset. The Web site shall consist of a song lyrics Web site with at least one picture. You will demonstrate the following scenario to your TA: You will rebuild the Web site with the least amount of mouse and keyboard movement (caching the different Web pages is allowed). The rebuild will trigger a deployment and eventually lead to a new song lyric Web page when the browser is refreshed.

## Description
Using Azure Devops Pipeline to build and publish the dotnet project and Amazon AWS Codedeploy to deploy the new version of web app on the EC2 instances on AWS.

```
1. azure-pipelines.yaml -> yaml instruction file for azure pipeline
2. appspec.yaml -> yaml instruction file for AWS Codedeploy
````

## Instructions

1. Fork the git repository to your github account
2. Create a new S3 bucket
3. Make a new Azure pipeline for this repository
4. Add environment variable with key __*BUCKET_NAME*__ and value as the name of the new S3 bucket you created in step 2
5. In AWS Codedeploy create a new Codedeploy application with name __*csye7220-webapp*__ and deployment group name __*csye7220-webapp-deployment*__
6. Create a new EC2 linux instance and install the following
    - dotnet sdk
    - aws codedeploy agent
7. Create a new IAM Role for this instance to access S3 bucket and codedeploy
8. Create a new IAM user for Azure and give it permission to S3 bucket and codedeploy
9. Add the details of this new IAM user in the azure pipeline Services 
10. Add ingress rule to port 5000 for the EC2 instance security group
10. Make a dummpy commit on your repository to trigger the build and deploy process
11. The MySong app can now be accessed at port 5000

## @Author
Prashant Kabra
