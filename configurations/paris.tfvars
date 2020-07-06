region = "us-west-3"
subnets = [
    "subnet-0ff4118feafdb3fc3", 
    "subnet-0e0c31ec0af360a62", 
    "subnet-0ea753a309a9fd21c"
    ]
vpc_id = "vpc-023682be8a68a5e24"
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
# Below code is used to set backend only
environment                     =   "paris"
s3_bucket                       =   "terraform-state-april-class-zhanara"
s3_folder_project               =   "eks"
s3_folder_region                =   "us-east-1"
s3_folder_type                  =   "tools"
s3_tfstate_file                 =   "eks.tfstate"