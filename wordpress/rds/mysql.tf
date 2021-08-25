module "rds_cluster_aurora_mysql_serverless" {
  source = "cloudposse/rds-cluster/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version     = "x.x.x"
  namespace            = "eg"
  stage                = "dev"
  name                 = "db"
  engine               = "aurora-mysql"
  engine_mode          = "serverless"
  engine_version       = "5.7.mysql_aurora.2.07.1"
  cluster_family       = "aurora-mysql5.7"
  cluster_size         = 0
  admin_user           = "amso"
  admin_password       = "test123456789"
  db_name              = "dbwordpress"
  db_port              = 3306
  vpc_id               = "vpc-b5b640c8"
  security_groups      =["sg-06232ab227cfe9548"]
  subnets              = ["subnet-6b943334", "subnet-7bbd2175"]
  #zone_id              = "Zxxxxxxxx"
  enable_http_endpoint = false

 
}
