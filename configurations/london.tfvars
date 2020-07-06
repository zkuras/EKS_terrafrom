region = "eu-west-2"
subnets = [
    "subnet-09b0444bdfb32dbfa", 
    "subnet-095cafdb77dc5c15f", 
    "subnet-074b415163a0d1f25"
    ]
vpc_id = "vpc-0faef7e1dec7eb234"
instance_type = "m4.large"
asg_max_size = 5
# Mapping
tags = {
    Env                     = "Development"
    Billing                 = "SMA"
    Application             = "Artemis" 
    Region                  = "us-east-1" 
    Created_by              = "Zhanara"
    Team                    = "DevOps"
    Managed_by              = "infrastructure"
    Quarter                 = 3
    Name                    = "something"
}
#Below code is used to set backend only
#environment                     =   "london"
s3_bucket                       =   "terraform-state-april-class-zhanara"
s3_folder_project               =   "eks"
s3_folder_region                =   "us-east-1"
s3_folder_type                  =   "tools"
s3_tfstate_file                 =   "eks.tfstate"
#
