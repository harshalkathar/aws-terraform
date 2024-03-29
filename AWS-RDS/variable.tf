variable "engine_name" {
  description = "Enter the DB engine"
  type        = string
  default     = "mysql"
}


variable "db_name" {
  description = "Enter the name of the database to be created inside DB Instance"
  type        = string
  default     = "harshal"
}
variable "user_name" {
  description = "Enter the username for DB"
  type        = string
  default     = "master"
}

////Constraints: At least 8 printable ASCII characters. Can't contain any of the following: / (slash), '(single quote), "(double quote) and @ (at sign).
variable "pass" {
  description = "Enter the username for DB"
  type        = string
  default     = ""
}

//disabled multi-az
variable "multi_az_deployment" {
  description = "Enable or disable multi-az deployment"
  type        = bool
  default     = false
}

//blocked public access

variable "public_access" {
  description = "Whether public access needed"
  type        = bool
  default     = false
}
variable "skip_finalSnapshot" {
  type    = bool
  default = true
}
variable "delete_automated_backup" {
  type    = bool
  default = true
}
variable "instance_class" {
  type    = string
  default = "db.t2.micro"
}

variable "rds_subnet1" {
  description = "Enter the  private subnet id"
  type        = string
  default     = ""
}

variable "rds_subnet2" {
  description = "Enter the private subnet id"
  type        = string
  default     = ""
}

variable "vpc_security_group_ids" {
  default = ""
}