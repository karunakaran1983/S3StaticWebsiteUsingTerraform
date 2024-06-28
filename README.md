# Project Title

AWS S3 Static Website using Terraform

## Table of Contents

- [Description](#description)
- [Installation](#installation)
- [Create Resources](#create-resources)
- [Verify Site](#verify-site)
- [Destroy Resources](#destroy-resources)

## Description

This Terraform project creates static website in AWS S3.

## Installation

### Clone the repository
```sh
git clone https://github.com/karunakaran1983/S3StaticWebsiteUsingTerraform.git
```
### Navigate into the project directory
```sh
cd S3StaticWebsiteUsingTerraform
```
### Install Terraform (skip if you have already it installed)
```sh
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
```

## Create Resources

### Execute below steps to create Static Website in AWS S3 
1. Initialize Terraform
    ```sh
    terraform init
    ```
2. Validate Terraform
    ```sh
    terraform validate
    ```
3. Plan Terraform
    ```sh
    terraform plan
    ```
4. Apply Terraform
    ```sh
    terraform apply -auto-approve
    ```

## Verify Site

### Verify the Static Website in S3
After successful execution of the terraform, Static Website URL will be displayed in the console.
Click on it to view the site

## Destroy Resources

### Destroy the resources in AWS
```sh
terraform destroy -auto-approve
```