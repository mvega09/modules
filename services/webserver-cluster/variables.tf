// -----------------------------
// Main variables to parameterize the deployment
// -----------------------------

// AWS region where resources will be deployed
variable "aws_region" {
  description = "AWS region where all resources will be created."
  type        = string
  default     = "us-east-2"
}

// EC2 instance type to use
variable "instance_type" {
  description = "EC2 instance type for the web server group."
  type        = string
  default     = "t2.micro"
}

variable "db_remote_state_bucket" {
  description = "S3 bucket name where the remote state of the database is stored."
  type        = string
  default     = "my-bucket-mvega09"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
  default     = "stage/data-stores/mysql/terraform.tfstate"
}

variable "cluster_name" {
  description = "El nombre a usar para todos los recursos del clúster"
  type        = string
  default     = "terramino-cluster"
}

variable "min_size" {
  description = "El número mínimo de Instancias EC2 en el ASG"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "El número máximo de Instancias EC2 en el ASG"
  type        = number
  default     = 3
}