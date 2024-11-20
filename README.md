# BCDR

# Capstone BCDR Project - Terraform Configuration

## Introduction

The **Capstone BCDR Project** aims to create a reliable, scalable cloud infrastructure for Business Continuity and Disaster Recovery (BCDR) using **Terraform**. This project helps provision essential resources in **Microsoft Azure**, including **Recovery Services Vaults**, **Resource Groups**, **Virtual Networks**, and **Virtual Machines**, which are critical components for disaster recovery planning. The goal is to automate the setup of this infrastructure, ensuring high availability and resilience in case of system failures or disasters.

## Getting Started

To get this project up and running, follow the steps below:

### 1. Installation Process

- **Install Terraform**: You need to have Terraform installed on your local machine. You can download the latest version from the [Terraform website](https://www.terraform.io/downloads.html).
  
  - For macOS (Homebrew):
    ```bash
    brew install terraform
    ```
  - For Windows (via Chocolatey):
    ```bash
    choco install terraform
    ```
  - For Linux (via apt):
    ```bash
    sudo apt-get install terraform
    ```

- **Install Azure CLI**: The Azure Command Line Interface (CLI) must also be installed to interact with Azure resources.

  - Follow the installation guide for [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).

### 2. Software Dependencies

- **Terraform**: Version 1.x (ensure that your version is compatible with the configuration).
- **Azure CLI**: For managing Azure resources from the command line.
- **Azure Account**: You will need an active Azure subscription and service principal credentials for Terraform to deploy resources.

### 3. Latest Releases

This project utilizes Terraform to create and manage the Azure resources. It is important to check the [Terraform documentation](https://www.terraform.io/docs) for the latest release to ensure compatibility with the Azure provider and features used in this repository.

### 4. API References

Refer to the official **Azure Terraform provider documentation** for detailed information about resource definitions and API references:  
[Azure Terraform Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

## Build and Test

### 1. Build Instructions

To deploy the infrastructure defined in the Terraform configuration files:

- Navigate to the directory containing the Terraform files.
- Initialize the Terraform working directory:
  ```bash
  terraform init
