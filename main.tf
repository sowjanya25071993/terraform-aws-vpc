resource "aws_vpc" "main" {
  cidr_block       = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    var.common_tags,
    var.vpc_tags
    {
        Name = "${var.project_name}-${var.environment}"
    }
  )
  }
