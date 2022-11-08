variable "region" {
  default = ""
}

variable "postgresql_availability_zone" {
  default = ""
}

variable "project_id" {
  default = 0
}

#rds PostgreSQL
variable "vpc_id" {
  default = ""
}

variable "subnet_id" {
  default = ""
}

variable "postgresql_charge_type" {
  default = "POSTPAID_BY_HOUR"
}

#instance specificaiton
variable "postgresql_name" {
  default = ""
}

variable "postgresql_memory" {
  default = 2
}

variable "postgresql_storage" {
  default = 100
}

variable "postgresql_engine_version" {
  default = ""
}

#security
variable "postgresql_security_groups" {
  default = []
}

variable "postgresql_root_user" {
  default = "root"
}

variable "postgresql_root_password" {
  default = ""
}

variable "postgresql_charset" {
  default = ""
}

variable "max_standby_archive_delay" {
  default = 30000
}

variable "max_standby_streaming_delay" {
  default = 30000
}

variable "postgresql_tags" {
  type    = map(string)
  default = {}
}
