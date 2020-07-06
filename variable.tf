variable "vpc_id" {}
variable "subnets" {}

variable "instance_type" {}
variable "asg_max_size" {}
variable "region" {}

variable "tags" {
    type = map
}
    