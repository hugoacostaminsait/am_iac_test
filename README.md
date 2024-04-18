This repository contains a basic infrastructure for a development environment in AWS CloudFormation.

Below are the steps to create an IAM user using the CLI:

1. Open your terminal or command line.
2. Execute the following command to create a new IAM user:
      ### `aws iam create-user --user-name amdev`
3. Generate policies by naming them (policy.json) and specifying permissions in the JSON file.
      ### `aws iam create-policy --policy-name FullAccessPolicy --policy-document file://C:\Users\jjimenezz\Documents\GitHub\am_iac_test\policy.json`
4.  Add permissions for the created user:
      ### `aws iam attach-user-policy --user-name amdev --policy-arn arn:aws:iam::590183872451:policy/FullAccessPolicy`
5. Finally, you can generate access credentials for the newly created user using the following command:
      ### `aws iam create-access-key --user-name amdev`


Template Description:

The template provides a basic infrastructure for an AWS cloud development environment, designed for a project named "NextGenCC" in a development ("Dev") environment focused on a call center.

Parameters:

1. VpcCIDR: Defines the CIDR block for the VPC.

2. AuroraDBInstanceType: Specifies the instance type for Aurora PostgreSQL.

3. OpenSearchInstanceType: Determines the instance type for OpenSearch.

4. EFSVolumeSize: Indicates the size of the EFS volume for embeddings storage.

5. BedrockLambdaHandler: Defines the handler function for the Bedrock Lambda function.

6. BedrockLambdaRuntime: Specifies the runtime environment for the Bedrock Lambda function.

7. BedrockLambdaCodeS3Bucket: Sets the S3 bucket where the code for the Bedrock Lambda function is stored.

8. BedrockLambdaCodeS3Key: Specifies the S3 key of the code for the Bedrock Lambda function.

Resources:

1. VPC (Virtual Private Cloud): A virtual private network to isolate resources in the cloud.

2. Security groups, subnets, and EFS mount targets: Networking and storage components within the VPC.

3. Aurora database cluster: A highly available PostgreSQL database cluster.

4. OpenSearch domain: An OpenSearch domain for search and analytics.

5. Amazon EKS cluster: A managed Kubernetes cluster for container orchestration.

6. Bedrock Lambda function: A basic Lambda function with an associated IAM role.

7. IAM role and other related resources: IAM roles and policies necessary for the deployed services.

Outputs:

Provides the ARN identifiers of various resources created within the VPC, such as the VPC itself, security groups, subnets, database clusters, OpenSearch domains, EKS clusters, and others, which can be useful for later references or integrations with other services.

This template offers a solid foundation for developing and deploying cloud infrastructure on AWS, providing the necessary resources for implementing applications and services in a development environment.