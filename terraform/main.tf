terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "personal_health" {
  identifier             = "salud-activa-personal-health"
  allocated_storage      = 20
  db_name                = "salud_activa_db"
  engine                 = "postgres"
  engine_version         = "16.3"
  instance_class         = "db.t3.micro"
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = true
  publicly_accessible    = false
  storage_encrypted      = true
  apply_immediately      = true
  backup_retention_period = 7
}
