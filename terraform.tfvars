region-name              = "us-east-1"
vpc-cidr-block           = "10.0.0.0/16"
vpc-name                 = "three-tier-vpc"
igw-name                 = "three-tier-igw"
nat-gw-name              = "three-tier-nat-gw"
web-subnet1-cidr         = "10.0.1.0/24"
web-subnet1-name         = "three-tier-web-subnet-1"
web-subnet2-cidr         = "10.0.2.0/24"
web-subnet2-name         = "three-tier-web-subnet-2"
app-subnet1-cidr         = "10.0.3.0/24"
app-subnet1-name         = "three-tier-app-subnet-1"
app-subnet2-cidr         = "10.0.4.0/24"
app-subnet2-name         = "three-tier-app-subnet-2"
db-subnet1-cidr          = "10.0.5.0/24"
db-subnet1-name          = "three-tier-db-subnet-1"
db-subnet2-cidr          = "10.0.6.0/24"
db-subnet2-name          = "three-tier-db-subnet-2"
az-1                     = "us-east-1a"
az-2                     = "us-east-1b"
public-rt-name           = "three-tier-public-route-table"
private-rt-name          = "three-tier-private-route-table"
launch-template-web-name = "three-tier-launch-template-web"
image-id                 = "ami-0df435f331839b2d6"
instance-type            = "t2.micro"
key-name                 = "jenkins"
web-instance-name        = "three-tier-web-instances"
alb-web-name             = "three-tier-alb-web"
alb-sg-web-name          = "three-tier-alb-sg-web"
asg-web-name             = "three-tier-asg-web"
asg-sg-web-name          = "three-tier-asg-sg-web"
tg-web-name              = "three-tier-tg-web"
launch-template-app-name = "three-tier-launch-template-app"
app-instance-name        = "three-tier-app-instances"
alb-app-name             = "three-tier-alb-app"
alb-sg-app-name          = "three-tier-alb-sg-app"
asg-app-name             = "three-tier-asg-app"
asg-sg-app-name          = "three-tier-asg-sg-app"
tg-app-name              = "three-tier-tg-app"
db-name                  = "mydb"
instance-class           = "db.t3.micro"
db-sg-name               = "three-tier-db-sg"
db-subnet-grp-name       = "three-tier-db-subnet-grp"
app-db-sg-name           = "three-tier-app-db"
