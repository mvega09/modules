// -----------------------------
// Main outputs for the deployment
// -----------------------------

// Public URL of the Application Load Balancer (ALB)
output "alb_dns_name" {
  value       =  aws_lb.terramino.dns_name
  description = "Public HTTP endpoint of the Load Balancer to access the application."
}

// Name of the created Auto Scaling Group
output "asg_name" {
  value       = aws_autoscaling_group.terramino.name
  description = "Name of the Auto Scaling Group managing the EC2 instances."
}

output "alb_security_group_id" {
  value       = aws_security_group.terramino_lb.id
  description = "El ID del Grupo de Seguridad adjunto al balanceador de carga"
}

