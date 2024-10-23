# Output the ECS Cluster Name
output "ecs_cluster_name" {
  value = aws_ecs_cluster.app_cluster.name
}

# Output the ECS Service Name
output "ecs_service_name" {
  value = aws_ecs_service.app_service.name
}
