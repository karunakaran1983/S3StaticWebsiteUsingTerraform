# Project Title

AWS S3 Static Website using Terraform

## Table of Contents

- [Description](#description)
- [Installation](#installation)

## Description

This Terraform project creates static website in AWS S3.

## Installation

### Clone the repository
git clone https://github.com/karunakaran1983/S3StaticWebsiteUsingTerraform.git

### Navigate into the project directory
cd S3StaticWebsiteUsingTerraform

### Install Terraform (skip if you already have it installed)
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

### Execute below steps to create Static Website in AWS S3 
1. terraform init -> Terraform has been successfully initialized!
2. terraform validate -> Success! The configuration is valid.
3. terraform plan
4. terraform apply -auto-approve

### Verify the Static Website in S3
After successful execution of the terraform, Static Website URL will be displayed in the console.
Click on it to view the site

5. terraform destroy -auto-approve -> Created resources in AWS will be successfully destroyed