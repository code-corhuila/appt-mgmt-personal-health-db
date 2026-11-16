variable "aws_region" {
  description = "AWS region for the database environment"
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
  description = "Database administrator username"
  type        = string
  default     = "saludactiva"
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
  default     = "ChangeMe123!"
}
