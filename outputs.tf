//Outputs
output "wp_service_url" {
  value = kubernetes_service.wpService.load_balancer_ingress.0.ip

  depends_on = [
    kubernetes_service.wpService
  ]
}

output "db_host" {
  value = google_sql_database_instance.sqldb_Instance.ip_address.0.ip_address

  depends_on = [
    google_sql_database_instance.sqldb_Instance
  ]
}

output "database_name" {
  value = var.database

  depends_on = [
    google_sql_database_instance.sqldb_Instance
  ]
}

output "db_user_name" {
  value = var.db_user

  depends_on = [
    google_sql_database_instance.sqldb_Instance
  ]
}

output "db_user_passwd" {
  value = var.db_user_pass

  depends_on = [
    google_sql_database_instance.sqldb_Instance
  ]
}
