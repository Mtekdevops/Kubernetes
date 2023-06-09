Taken From Kalyan Reddy's course on Udemy, I feel like its more important to be able to learn and understand an existing codebase 
and then adapt that to your needs rather than trying to write from scratch. 

I have updated the versions and made some changes/improvements like

* removing the provisioner on the bastion host that copies the SSH private key onto the box 
(an unnecessary security risk given you can just use the 'ssh -J' flag to get the same result)

* adding permissions to the node groups instance profile to allow the use of SSM-Agent that is already present on the Nodes AMI
  (this gives multiple benefits including Bastion/VPN-less SSHlike connection to private subnet nodes with no SSH keys to manage)

# [Terraform on AWS EKS Kubernetes IaC SRE- 50 Real-World Demos](https://links.stacksimplify.com/terraform-on-aws-eks-kubernetes-iac-sre)

## Course Modules 
08. AWS EKS Cluster, Public and Private Node Groups using Terraform
09. Kubernetes Fundamentals
10. Kubernetes Deployment and Service using YAML
11. Terraform Kubernetes Provider - Kubernetes Deployment & Service
12. Terraform Remote State Storage - AWS S3 & DynamoDB
13. AWS EKS IAM Roles for Service Accounts (IRSA) using Terraform
14. AWS EKS EBS CSI Driver Install with Self-Managed AddOn Option using Terraform
15. AWS EKS EBS Demo using k8s YAML  (UserMgmt WebApp with MySQL DB)
16. AWS EKS EBS Demo using k8s Terraform  (UserMgmt WebApp with MySQL DB)
17. AWS EKS EBS Volumes Retain and Resize Settings
18.  AWS EBS CSI EKS Add-On
19. Provision AWS IAM Admin User as EKS Admin
20. Provision AWS IAM Basic User as EKS Admin
21. Provision of AWS Users (Admin & Basic) as EKS Admins using Terraform
22. Provision EKS Admins using IAM Roles & IAM Groups
23. Provision EKS Admins using IAM Roles & IAM Groups using Terraform
24. Provision EKS ReadOnly User using IAM Roles, Groups & k8s CR, CRB
25. Provision EKS Developer Users using IAM Roles, Groups & k8s R, RB
26. AWS Load Balancer Controller Install using Terraform Helm Provider
27. Ingress Basics - Automate with Terraform
28. Ingress Context Path based Routing - Automate with Terraform
29. Ingress SSL and SSL Redirect - Automate with Terraform
30. Install ExternalDNS using Terraform Helm Provider
31. Ingress with ExternalDNS - Automate with Terraform
32. Kubernetes LB Service with ExternalDNS - Automate with Terraform
33. Ingress Name based Virtual Host Routing- Automate with Terraform
34. Ingress SSL Discovery Host
35. Ingress SSL Discovery TLS
36. Ingress Groups - Automate with Terraform
37. Ingress Target Type IP - Automate with Terraform
38. Ingress Internal Load Balancer - Automate with Terraform
39. Ingress Cross Namespaces - Automate with Terraform
40. AWS Network Load Balancer with AWS Load Balancer Controller
41. AWS NLB TLS, External DNS with AWS LBC - Automate with Terraform
42. AWS NLB Internal LB with AWS LBC - Automate with Terraform
43. AWS EKS Fargate Profiles using Terraform
44. Run EKS Workloads on AWS Fargate - Automate with Terraform
45. AWS Fargate Only EKS Cluster using Terraform
46. AWS EFS CSI Controller Install using Terraform Helm Provider
47. AWS EFS Static Provisioning - Automate with Terraform
48. AWS EFS Dynamic Provisioning - Automate with Terraform
49. AWS EFS File System Mount for Fargate Workloads 
50. Kubernetes Cluster Autoscaler Controller Install 
51. Kubernetes Cluster Autoscaler Controller Test
52. Kubernetes Horizontal Pod Autoscaling with Terraform
53. Kubernetes Vertical Pod Autoscaling with Terraform
54. AWS EKS Monitoring and Logging with kubectl
55. AWS EKS Monitoring and Logging with Terraform



## Kubernetes Concepts Covered
01. Kubernetes Deployments
02. Kubernetes Pods
03. Kubernetes Service of Type LoadBalancer
04. Kubernetes Service of Type ClusterIP
05. Kubernetes Ingress Service
06. Kubernetes Ingress Class
07. Kubernetes Storage Class
08. Kubernetes Storage Persistent Volume
09. Kubernetes Storage Persistent Volume Claim
10. Kubernetes RBAC
11. Kubernetes Role
12. Kubernetes Role Binding
13. Kubernetes Cluster Role 
14. Kubernetes Cluster Role Binding
15. Kubernetes Cluster Autoscaler
16. Kubernetes Vertical Pod Autoscaler
17. Kubernetes Horizontal Pod Autoscaler
18. Kubernetes DaemonSets
19. Kubernetes Namespaces
20. Kubernetes Service Accounts
21. Kubernetes Groups
22. Kubernetes ConfigMaps
23. Kubernetes Requests and Limits
24. Kubernetes Worker Nodes


## Terraform Concepts covered
01. Settings Block
02. Providers Block
03. Multiple Providers usage
04. Dependency Lock File Importance
05. Resources Syntax and Behavior
06. Resources Meta-Argument - depends_on
07. Resources Meta-Argument - count
08. Resources Meta-Argument - for_each
09. Resources Meta-Argument - lifecycle
10. Input Variables - Basics
11. Input Variables - Assign When Prompted
12. Input Variables - Assign with terraform.tfvars
13. Input Variables - Assign with auto tfvars
14. Input Variables - Lists
15. Input Variables - Maps
16. File Function
17. Output Values
18. Local Values
19. Datasources
20. Backends - Remote State Storage
21. File Provisioner
22. remote-exec Provisioner
23. local-exec Provisioner
24. Null Resource
25. Modules from Public Registry
26. element function
27. Remote State Datasource
28. Terraform Datasources

## Terraform Providers used
1. AWS Terraform Provider
2. Kubernetes Terraform Provider
3. Kubectl Terraform Provider
4. HTTP Terraform Provider
5. Null Terraform Provider
6. Helm Terraform Provider



## What will students learn in your course?
- You will learn to master Terraform & Kubernetes on AWS EKS in a Real-world perspective with 55 demo's on AWS Cloud with 25+ Kubernetes and 25+ Terraform Concepts
- You will build a AWS EKS Cluster with Public and Private Node Groups with Terraform
- You will learn Kubernetes Fundamentals for 3 hours
- You will implement a simple kubernetes deployment and service using Terraform Kubernetes Provider
- Understand and Implement Terraform Remote State Datasource
- You will learn AWS EKS IRSA (IAM Roles for Service Accounts Concept) in detail and implement it with Terraform
- You will master Kubernetes Storage concepts with AWS EBS CSI Controller by automating the whole install process with Terraform
- You will master AWS EKS IAM Concepts with 7 detailed Demo
- You will learn to implement AWS Load Balancer Controller Install on AWS EKS Cluster with Terraform
- You will learn to implement 14 Ingress Service Demos (AWS Application Load Balancer) using Terraform Kubernetes Provider 
- You will learn to implement 3 Kubernetes Service Demos for AWS Load Balancer Controller
- You will master the AWS Fargate Concepts with 3 demos including running all workloads of EKS Cluster on AWS Fargate (Fargate Only EKS Cluster)
- You will install Kubernetes Cluster Autoscaler on AWS EKS Cluster with Terraform and Test it
- You will implement Horizontal and Vertical Pod Autoscaler Concepts with Terraform
- You will learn to implement AWS EKS Monitoring and Logging using kubectl and Terraform
