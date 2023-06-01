output "web_instance_ip" {
    value = aws_instance.web.public_ip
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.finalproject-eks.endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = aws_security_group.sg.id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.finalproject-eks.name
}


output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.finalproject-eks.certificate_authority[0].data
}

output "serviceaccount_id" {
  description = "Kubernetes service account Cluster ID"
  value       = kubernetes_service_account.service-account.id
}