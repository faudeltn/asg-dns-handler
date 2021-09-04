variable "name" {
  description = "Name to be used on Lambda created"
  type        = string
  default     = ""
}

variable "autoscale_handler_unique_identifier" {
  description = "asg_dns_handler"
}

variable "autoscale_route53zone_id" {
  description = "The ID of route53 zone associated with autoscaling group"
}

variable "domain" {
  description = "Domain Name to be used"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
