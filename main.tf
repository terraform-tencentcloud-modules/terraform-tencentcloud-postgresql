provider "tencentcloud" {
  region = var.region
}


resource "tencentcloud_postgresql_instance" "postgresql" {
  project_id        = var.project_id
  availability_zone = var.postgresql_availability_zone
  vpc_id            = var.vpc_id
  subnet_id         = var.subnet_id

  charge_type = var.postgresql_charge_type

  #instance specificaiton
  name           = var.postgresql_name
  memory         = var.postgresql_memory
  storage        = var.postgresql_storage
  engine_version = var.postgresql_engine_version
  charset        = var.postgresql_charset

  #Standby servers
  max_standby_archive_delay   = var.max_standby_archive_delay
  max_standby_streaming_delay = var.max_standby_streaming_delay

  #security
  security_groups = var.postgresql_security_groups
  root_user       = var.postgresql_root_user
  root_password   = var.postgresql_root_password

  tags = var.postgresql_tags
}
