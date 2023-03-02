variable "cluster_name" {
  type        = string
}

variable "database_name" {
  type        = string
}

variable "engine" {
  type        = string
}

variable "instance_size" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "subnet_type" {
  type        = string
}

variable "cost_center" {
  type        = string
  description = "Cost Center to associate instance"
}

variable "ami_filters" {
  type        = map
  description = "Global ami filters"
}

variable "account_vars" {
  type        = map
  description = "Global account variables"
}

variable "cost_centers" {
  type        = map
  description = "Global cost centers"
}
