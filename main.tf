resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  enable_dns_support = true

  tags = merge({
    Name = "${var.env}-vpc"
  }, var.tags)
}



resource "aws_subnet" "main" {
  count = length(var.web_subnet_cider_block)
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  tags = merge({
    Name = "${var.env}-web_subnet"
  }, var.tags)
}