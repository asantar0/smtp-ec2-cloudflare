#AWS 
variable "availability_zone" {
  description = "Zone used to deploy ec2 instance"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "Instance type used of all machines created"
  type        = string
  default     = "t2.micro"
}

variable "ami_system" {
  description = "OS used for all machines created"
  type        = string
  default     = "ami-084568db4383264d4"
}

variable "ssh_key" {
  description = "SSH Key used for login via CLI"
  type        = string
  default     = "personal-key"
}

#Cloudflare
variable "zone_id" {
  default   = ""
  type      = string
  sensitive = true
}

variable "domain" {
  default   = ""
  type      = string
  sensitive = true
}

variable "api_token" {
  default   = ""
  type      = string
  sensitive = true
}
