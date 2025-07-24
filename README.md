# SaltStack Automation Demo with AWS and Reference for VCF + Aria Automation

## Overview

This project demonstrates infrastructure provisioning and system hardening automation using **SaltStack**. It includes:

- A working Terraform-based automation for provisioning an EC2 instance in **AWS**.
- A SaltStack state file to apply basic Linux system hardening.
- Reference templates for how the same could be achieved using **VMware Cloud Foundation (VCF)** and **Aria Automation**.

---

## Why AWS for Demo?

Due to VCF (VMware Cloud Foundation) being **a private cloud setup that requires licensed enterprise access**, I have implemented and tested the full end-to-end automation on **AWS EC2** instead, which provides:

- Free-tier testing options
- Easy provisioning via Terraform
- Public accessibility for validation and demo

However, I’ve included the equivalent **VCF + Aria templates** as reference to show how this same workflow would apply in an enterprise VMware environment.

---

## Demo Flow on AWS (Successfully Tested)

1. Launch EC2 instance using `terraform apply` (from `main.tf`).
2. SSH into the instance using key pair.
3. Install SaltStack manually.
4. Copy and run the Salt state file (`harden-linux.sls`) to:
   - Install & enable `firewalld`, `auditd`, `fail2ban`
   - Ensure essential hardening services are active

---

## Equivalent Flow for VCF (Reference Only)

1. Use `aria-cloud-template.yaml` to define a VM blueprint in Aria.
2. Provision the VM via Aria into your VCF setup.
3. Apply `aria-salt-state.sls` using SaltStack Config integration in Aria.
4. The hardening outcome will be the same as AWS.

> **Note**: VCF & Aria automation steps are not executed due to lack of access to a licensed VCF setup — these are included to demonstrate readiness for enterprise implementation.

---

## Outcome

- Successfully demonstrated SaltStack-based automation using Terraform + AWS.
- Showcased equivalent VCF + Aria workflows for review.
- Ready to adapt the solution to enterprise-grade VMware Cloud environments when access is available.

---

## Author

**Sathvik Racha**  
Cloud Automation Enthusiast | Terraform | SaltStack | AWS | VCF/Aria (VMware)
