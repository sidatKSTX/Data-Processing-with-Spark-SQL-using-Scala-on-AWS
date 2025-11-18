variable "default_tags" {
  description = "Default tags to apply to all resources"
  type        = map(string)
  default = {
    Project     = "spark3"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

variable "created_by" {
  description = "Username of the person creating the resources"
  type        = string
  default     = ""
}