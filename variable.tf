# mandatory ,user shouid supply
variable "ami_id" {
    type = string
   # default = "ami-09c813fb71547fc4f" #variables will be override
}
# optional default t3.micro .user can always override
variable "instance_type" {
    default = "t3.micro"
    type = string
    validation {
        condition = contains (["t3.micro","t3.medium","t3.small", var.test_variable])
        error_message = "instance type can only be ."
    }

}


# mandatory user shouid supply
variable "security_group_ids"{
    type = list(string)
}