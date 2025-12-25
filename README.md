| Layer              | Technology                 |
| ------------------ | -------------------------- |
| Frontend           | PHP (Dockerized)           |
| Backend            | PHP REST API               |
| Cache              | Redis                      |
| Database           | MySQL (RDS Multi-AZ)       |
| Container Platform | AWS EKS                    |
| CI/CD              | Jenkins                    |
| IaC                | Terraform                  |
| Monitoring         | Prometheus + Grafana       |
| Ingress            | AWS ALB Ingress Controller |



# 🛒 Production-Grade E-Commerce Platform – DevOps Project

A complete end-to-end DevOps project demonstrating how to design, deploy, scale, monitor, and recover a high-traffic e-commerce application using modern cloud-native technologies.

---

## 🚀 Project Overview

This project showcases a **production-ready e-commerce platform** capable of handling **50,000+ concurrent users**, built with a strong focus on:

- Infrastructure as Code
- Kubernetes orchestration
- CI/CD automation
- Scalability & high availability

---

## 🧱 Architecture

![Architecture Diagram](architecture/architecture.gif)

### High-Level Flow
1. Users access the application via AWS ALB Ingress
2. Traffic is routed to frontend pods running on EKS
3. Backend services handle business logic
4. Redis is used for caching to reduce database load
5. MySQL (RDS Multi-AZ) stores persistent data
6. Prometheus & Grafana provide monitoring and alerting
7. Jenkins automates build and deployment pipelines

---

## 🛠 Technology Stack

### Cloud & Infrastructure
- AWS (EKS, EC2, RDS, IAM, VPC, ALB)
- Terraform (Infrastructure as Code)

### Container & Orchestration
- Docker
- Kubernetes (EKS)
- Helm

### CI/CD
- Jenkins
- Amazon ECR

### Data Layer
- MySQL (RDS with Point-In-Time Recovery)
- Redis (Caching)

---

## 🔁 CI/CD Pipeline Flow

1. Code push to GitHub
2. Jenkins pipeline triggered automatically
3. Docker images built and pushed to Amazon ECR
4. Kubernetes deployments updated on EKS
5. Manual approval for production
6. Automatic rollback on failure

---

## 📈 Scalability & Reliability

- Horizontal Pod Autoscaling (HPA) for frontend & backend
- Redis caching to handle read-heavy traffic
- Rolling updates with zero downtime
- Multi-AZ RDS for database high availability

---


## 🎯 Key DevOps Learnings

- Designing scalable Kubernetes architectures
- Automating deployments with Jenkins
- Handling high traffic using caching and autoscaling

---

## 👤 Author

**Sivaraj Shanmugam**  
Senior DevOps Engineer  
