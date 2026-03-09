resource "aws_db_instance" "platform_db" {
  identifier        = "platform-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "admin"
  password          = "examplepassword"

  skip_final_snapshot = true
}