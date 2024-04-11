This repository contains a basic infrastructure for a development environment in AWS CloudFormation.

Below are the steps to create an IAM user using the CLI:

1. Open your terminal or command line.
2. Execute the following command to create a new IAM user:
      ### `aws iam create-user --user-name amdev`
3. Add permissions for the created user:
      ### `aws iam attach-user-policy --user-name amdev --policy-arn arn:aws:iam::aws:policy AdministratorAccess`
4. Finally, you can generate access credentials for the newly created user using the following command:
      ### `aws iam create-access-key --user-name amdev`

Here's a summary of the main features and resources created:

VPC (Virtual Private Cloud): Creates a virtual network in the specified region with defined CIDR blocks. Also configures DNS.

Security Groups (SGR): Defines a security group for EFS Mount Target.

Subnets (SUPR1, SUPR2, SUPR3, SUPR4): Creates four subnets in different availability zones to distribute resources.

EFS FileSystem: Creates an elastic file system for storing data.
EFS MountTarget: Creates a mount point for EFS in one of the subnets.
DBSubnetGroup: Creates a subnet group for Aurora DB.
AuroraDBCluster: Creates an Aurora PostgreSQL database cluster.
OpenSearch Service: Creates an Amazon OpenSearch Service domain with security and storage configurations.
EKS Cluster (MyEKSCluster): Creates an Amazon Elastic Kubernetes Service (EKS) cluster.
IAM Roles and Policies (EKSRole, EKSPolicy, RDSPolicy, EFSPolicy, OpenSearchPolicy): Configures IAM roles and policies to provide permissions to the created resources.
To use this template, you can copy and paste the code into a file with the extension .yaml or .json and then deploy it using AWS CloudFormation. Make sure to review and customize the parameters and tags as necessary for your specific environment. Additionally, you can use the outputs provided to get the ARNs of the created resources after deployment.

