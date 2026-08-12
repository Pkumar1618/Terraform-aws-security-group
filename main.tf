resource "aws_security_group" "main" {
  name        = local.sg_final_name
  description = "allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
      Name = local.sg_final_name
    }
  )
}

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#     security_group_id = aws_security_group.allow_tls.id 
#     cidr_ipv4 = aws_vpc.main.cidr_block
#     from_port = 443
#     ip_protocol = "tcp"
#     to_port = 443
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
#     security_group_id = aws_security_group.allow_tls.id
#     cidr_ipv6 = aws_vpc.main.cidr_block
#     from_port = 443
#     ip_protocol = "tcp"
#     to_port = 443
# }

