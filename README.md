# Capstone BCDR Project - Terraform Configuration

## Introduction

The **Capstone BCDR Project** aims to create a reliable, scalable cloud infrastructure for Business Continuity and Disaster Recovery (BCDR) using **Terraform**. This project automates the provisioning of essential resources in **Microsoft Azure**, such as **Recovery Services Vaults**, **Resource Groups**, **Virtual Networks**, and **Virtual Machines**—key components for disaster recovery planning. The goal is to ensure high availability and resilience in case of system failures or disasters by leveraging Azure's cloud infrastructure.

## Getting Started

To get this project up and running on your local system, follow the steps below.

### 1. Installation Process

Before you can run this project, make sure you have the following software installed:

#### Visual Studio Code

You will need **Visual Studio Code** (VS Code) as your code editor. Follow the installation instructions from the official [Visual Studio Code website](https://code.visualstudio.com/Download).

#### Terraform

You need to have **Terraform** installed to manage infrastructure. To install Terraform:

- Go to the [Terraform download page](https://www.terraform.io/downloads.html) and choose the appropriate version for your OS.

  - **macOS** (Homebrew):
    
bash
    brew install terraform

  - **Windows** (via Chocolatey):
    
bash
    choco install terraform

  - **Linux** (via apt):
    
bash
    sudo apt-get install terraform


#### Azure CLI

You also need to install the **Azure CLI** to interact with Microsoft Azure:

- Go to the [Azure CLI installation page](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) and follow the instructions for your operating system.

Once installed, you can verify the installation by running:
bash
az --version

### 2. Configuration

Before running Terraform, you'll need to configure your Azure environment and authenticate with Azure CLI. To authenticate:

```bash
az login
```

This will open a browser window asking you to log in to your Azure account.

### 3. Initialize Terraform

Run the following command in the root directory of this repository to initialize Terraform:

```bash
terraform init
```

This will download the necessary provider plugins and prepare the workspace.

## Project Structure

Here’s a breakdown of the repository structure:

```
.
├── main.tf              # Main Terraform configuration file
├── variables.tf         # Variables for Terraform configuration
├── outputs.tf           # Outputs from the Terraform execution
├── README.md            # Project documentation
└── .gitignore           # Git ignore file to exclude sensitive files
```

- **main.tf**: This file contains the main configuration for deploying the Azure resources (Recovery Vault, Virtual Machines, etc.).
- **variables.tf**: Defines the variables used in the main configuration to make the project modular and flexible.
- **outputs.tf**: Specifies the output values from Terraform execution, such as the public IP of the deployed virtual machines.

## Usage

To deploy the resources in Azure:

1. Run the following command to create an execution plan:
   ```bash
   terraform plan
   ```

2. Apply the changes to create the resources in Azure:
   ```bash
   terraform apply
   ```

This will provision the necessary resources such as **Resource Groups**, **Recovery Vaults**, and **Virtual Machines** in your Azure environment.

## Contributing

Contributions to this repository are welcome. To contribute:

1. Fork this repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add new feature'`)
5. Push to your forked repository (`git push origin feature-branch`)
6. Open a pull request

Please ensure that your code adheres to the project’s coding standards and includes adequate documentation.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- **Microsoft Azure**: For providing the platform and services for the project.
- **Terraform**: For enabling infrastructure-as-code to automate cloud provisioning.
- **Mentors and Advisors**: For guidance and feedback during the development process of this project.
```
