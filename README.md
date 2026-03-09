# HRS Platform Engineering Assessment

This repository contains a sample implementation of a **multi-tenant platform architecture** designed to support multiple engineering teams using shared cloud infrastructure.

The platform focuses on scalability, automation, and observability while ensuring strong tenant isolation and secure deployments.

---

## Architecture Overview

The platform is designed to support **20+ engineering teams (250+ developers)** with the ability to scale to **50+ teams**.

Core capabilities include:

* Automated CI/CD pipelines for application delivery
* Containerized workloads running on a Kubernetes platform
* Infrastructure provisioned using Infrastructure as Code
* Centralized monitoring and observability
* Multi-tenant isolation using namespaces and RBAC

---

## Repository Structure

```
.
├── 1_platform_design
│   ├── architecture-diagram.png
│   └── design.md
│
├── 2_infrastructure
│   └── terraform
│       ├── main.tf
│       ├── providers.tf
│       ├── variables.tf
│       ├── vpc.tf
│       ├── eks.tf
│       ├── iam.tf
│       ├── rds.tf
│       ├── namespaces.tf
│       └── outputs.tf
│
└── 3_observability
    ├── otel-collector.yaml
    └── monitoring.md
```

---

## Platform Design

The platform architecture focuses on enabling development teams to deploy applications independently while sharing common infrastructure.

Key design principles:

* **Multi-tenancy** using Kubernetes namespaces
* **Infrastructure as Code** for repeatable deployments
* **Automated CI/CD pipelines**
* **Centralized monitoring and telemetry collection**

---

## Infrastructure

Infrastructure resources are defined using Terraform and include:

* Virtual Private Cloud (VPC)
* Kubernetes cluster for container orchestration
* Namespace configuration for tenant isolation
* IAM roles and access control
* Database and storage services

---

## Observability

The platform includes a monitoring and observability setup that collects:

* Metrics
* Logs
* Distributed traces

Telemetry is exported through an OpenTelemetry collector to a monitoring platform where dashboards and alerts can be configured.

---

## Goal of This Project

The goal of this repository is to demonstrate how a **modern platform engineering approach** can be used to build a scalable and reliable application platform for multiple development teams.
