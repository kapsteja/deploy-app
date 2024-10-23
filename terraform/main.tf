provider "aws" {
  region = "us-east-1"
}
module "ecr" {
  source = "./modules/ecr"
  repository_name = "my-sample-app"
}
module "iam" {
  source = "./modules/iam"
}
module "network" {
  source = "./modules/network"
}
module "ecs" {
  source = "./modules/ecs"
  cluster_name       = "my-sample-app-cluster"
  task_family        = "my-sample-app-task"
  task_cpu           = "256"
  task_memory        = "512"
  container_name     = "my-sample-app"
  container_image    = "${module.ecr.ecr_repository_url}:latest"
  container_port     = 80
  execution_role_arn = module.iam.ecs_task_execution_role_arn
  subnet_ids         = [module.network.subnet_id]
  security_group_id  = module.network.security_group_id
  desired_count      = 1
  service_name       = "my-sample-app-service"
  aws_region         = "us-east-1"
}