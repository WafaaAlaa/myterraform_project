resource "aws_instance" "wafaa_ec2"{
    ami= var.ami
    instance_type= var.instance_type
    subnet_id = aws_subnet.public_subnet.id
   
    tags = {
    Name = "wafaa_ec2"
}
}