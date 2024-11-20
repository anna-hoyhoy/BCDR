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
    ```bash
    brew install terraform
    ```
  - **Windows** (via Chocolatey):
    ```bash
    choco install terraform
    ```
  - **Linux** (via apt):
    ```bash
    sudo apt-get install terraform
    ```

#### Azure CLI

You also need to install the **Azure CLI** to interact with Microsoft Azure:

- Go to the [Azure CLI installation page](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) and follow the instructions for your operating system.

Once installed, you can verify the installation by running:
```bash
az --version
