module "rds_cluster_aurora_mysql_serverless" {
  source = "cloudposse/rds-cluster/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version     = "x.x.x"
  namespace            = "eg"
  stage                = "dev"
  name                 = "db"
  engine               = "aurora"
  engine_mode          = "serverless"
  cluster_family       = "aurora5.6"
  cluster_size         = 0
  admin_user           = "admin1"
  admin_password       = "Test123456789"
  db_name              = "dbname"
  db_port              = 3306
  instance_type        = "db.t2.small"
  vpc_id               = "vpc-xxxxxxxx"
  security_groups      = ["sg-xxxxxxxx"]
  subnets              = ["subnet-xxxxxxxx", "subnet-xxxxxxxx"]
  zone_id              = "Zxxxxxxxx"
  enable_http_endpoint = true

  scaling_configuration = [
    {
      auto_pause               = true
      max_capacity             = 256
      min_capacity             = 2
      seconds_until_auto_pause = 300
    }
  ]
}
