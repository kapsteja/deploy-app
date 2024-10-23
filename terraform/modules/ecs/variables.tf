variable "cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
}

variable "task_family" {
  description = "Family name for the ECS task definition"
  type        = string
}

variable "task_cpu" {
  description = "CPU units for the ECS task"
  type        = string
}

variable "task_memory" {
  description = "Memory (in MB) for the ECS task"
  type        = string
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
}

variable "container_image" {
  description = "Docker image to use for the ECS task"
  type        = string
}

variable "container_port" {
  description = "Port that the container listens on"
  type        = number
}

variable "execution_role_arn" {
  description = "ARN of the IAM role for ECS task execution"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS tasks"
  type        = list(string)
}

variable "security_group_id" {
  description = "ID of the security group to use for the ECS tasks"
  type        = string
}

variable "desired_count" {
  description = "Number of desired tasks for the ECS service"
  type        = number
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "aws_region" {
  description = "AWS Region for the ECS service"
  type        = string
}
