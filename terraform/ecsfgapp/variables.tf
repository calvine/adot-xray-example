variable "vpc_id" {
  description = "The id of the VPC the app will be hosted in"
  type        = string
}

variable "private_subnet_ids" {
  description = "The ids of the private subnets where the ECS instances will run"
  type        = set(string)
}

variable "public_subnet_ids" {
  description = "The ids of the public subnets where the ALB will run"
  type        = set(string)
}

variable "external_port" {
  description = "The port on the ALB for the app"
  type        = number
}

variable "app_name" {
  description = "The name of the app being deployed"
  type        = string
}

variable "container_port" {
  description = "The port on the ecs container"
  type        = number
}

variable "healthcheck_path" {
  description = "The endpoint for the healthcheck from the ALB"
  type        = string
}

variable "ecs_cluster_id" {
  description = "The id of the ECS cluster to add the service to."
  type        = string
}

variable "ecs_desired_count" {
  description = "The desired number of instances of the app"
  type        = number
}

variable "ecs_fargate_cpu" {
  description = "The desired amount of CPU in vCPU for your fargate container isntances"
  type        = number
}

variable "ecs_fargate_memory" {
  description = "The desired amount of memory in MiB for your fargate container isntances"
  type        = number
}

variable "ecr_repo_url" {
  description = "The url to the ECR repo for the serivce"
  type        = string
}

variable "aws_region" {
  description = "The aws region the service will be deployed in"
  type        = string
}