variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
    description = "Name Filter Vars"
    
    type = object({
      name  = string
      owner = string
    }})

    default = {
      name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
      owner = "979382823631" # Bitnami
    }
}

variable "environment" {
  description = "Environment var"

  type = object ({
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"  
  }
  
}

variable "asg_min" {
  description = "minimum instances in cluster"

  default = 1
}

variable "asg_max" {
  description = "maximum instances in cluster"

  default = 2
}
