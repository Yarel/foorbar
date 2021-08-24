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
  vpc_id               = "vpc-9be24df0"
  security_groups      =["sg-07d906a483515e5c8"]
  subnets              = ["subnet-43ee9b0f", "subnet-46ce192d"]
  #zone_id              = "Zxxxxxxxx"
  enable_http_endpoint = false

 
}
