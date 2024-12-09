Automated Infrastructure Deployment with Terraform:
---------------------------------------------------
Overview:
--------
         This project demonstrates the use of Terraform to automate the provisioning of cloud infrastructure on AWS. The infrastructure includes an EC2 instance, an RDS database, and an S3 bucket, which are commonly used in modern cloud-based applications.

Features:
---------
        *Infrastructure as Code (IaC): 
            --> Using Terraform to define, manage, and provision infrastructure.
        *Automated Resource Creation:
           --> EC2 instance for compute needs.
           --> S3 bucket for file storage.
           --> RDS database for managed relational data storage.
        *Modular and reusable configurations.
        *Secure and consistent deployment.

Project Structure:
------------------
    ├── main.tf          # Terraform configuration file for AWS resources.
    ├── providers.tf     # Terraform provider configuration file.
    ├──README.md        # Documentation for the project.

Prerequisites:
--------------
  1. Terraform: Installed and configured. "Install Terraform".
  2. AWS CLI: Installed and configured with appropriate IAM credentials.
   ---> command: "aws configure"
  3. AWS Account: Access with permissions for EC2, RDS, and S3.
Setup Instructions:
-------------------
  1. Clone the Repository
   --> git clone <repository-url> #my-repo-url
   --> cd <my-floder-name> #my-flodername 
  2. Initialize Terraform
    --> Run the following command to initialize the Terraform workspace: "terraform init"
  3. Validate the Configuration
    --> Ensure the configuration files are correctly written:" terraform validate"
  4. Apply the Configuration
    --> Deploy the infrastructure to AWS: "terraform apply "
    --> Type "yes" when prompted.

Resources Created:
------------------
  1. S3 Bucket:
    --> Secure and private storage bucket.
  2. EC2 Instance:
    --> ubuntu 1 instance with t2.micro type.
    -->Tags for easy identification.
  3. RDS Database:
    --> MySQL database with user-defined parameters.
    --> No final snapshot for easier cleanup.
Outputs:
--------
     --> Once the infrastructure is deployed, you can view the outputs, such as the public IP of the EC2 instance and the S3 bucket name.
Teardown:
---------
    --> To destroy the infrastructure and clean up AWS resources: "terraform destroy"
    --> Type "yes" when prompted.
Technologies Used:
-----------------
   *Terraform: Infrastructure as Code (IaC) tool.
   *AWS Services: EC2, RDS, S3.
   *AWS CLI: For managing configurations.
Contact:
--------
If you have any questions or need further assistance, feel free to reach out at maheshbommu04@gmail.com



