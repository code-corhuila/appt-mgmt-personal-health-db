output "db_endpoint" {
  description = "Connection endpoint for the personal health database"
  value       = aws_db_instance.personal_health.endpoint
}

output "db_name" {
  description = "Database name"
  value       = aws_db_instance.personal_health.db_name
}
