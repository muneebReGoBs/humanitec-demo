provider "aws" {
  region = var.aws_region
}

resource "aws_secretsmanager_secret" "demo" {
  name = var.secret_name
}

resource "aws_secretsmanager_secret_version" "demo_ver" {
  secret_id     = aws_secretsmanager_secret.demo.id
  secret_string = var.secret_value
}
