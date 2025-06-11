# CloudGuard Landing Zone

![CI Status](https://img.shields.io/badge/ci-pending-lightgrey) ![Terraform fmt](https://img.shields.io/badge/terraform-fmt--lint-lightgrey)

## Description

Terraform project to provision **Azure and AWS** accounts with built-in security guardrails by default, ensuring:

* **Segmented Networks**
* **Least-Privilege IAM**
* **Encryption At Rest**
* **Centralized Logging**

## Table of Contents

1. [Overview](#overview)
2. [Quickstart](#quickstart)
3. [Repository Structure](#repository-structure)
4. [Key Features](#key-features)
5. [Contributing](#contributing)
6. [License](#license)

---

## Overview

This repository provides a secure, multi-cloud **landing zone** that lets you spin up environments in Azure and AWS quickly, consistently, and according to security best practices.

## Quickstart

```bash
# 1. Clone the repository
git clone git@github.com:vitor/cloudguard-landing-zone.git
cd cloudguard-landing-zone

# 2. Initialize the network module
cd modules/network
tfenv install && terraform init

# 3. Apply the configuration
terraform apply -auto-approve
```

## Repository Structure

```text
modules/      # Terraform modules: network, identity, data, logging, governance
ci/           # CI/CD pipelines (GitHub Actions / Azure Pipelines)
docs/         # Diagrams, guides, and journal
demo/         # Demo scripts
```

## Key Features

* **Network Segmentation**
* **Least-Privilege IAM**
* **Encryption At Rest**
* **Centralized Logging**
* **Tag Enforcement**

## Contributing

1. Fork & clone the repo
2. Create a branch: `feat/my-feature`
3. Commit & push your changes
4. Open a Pull Request

## License

Vitor
