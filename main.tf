
provider aws {
    region = "ap-northeast-1"
}

resource "aws_instance" "instance" {
    count = 1
    ami = "ami-0ab0bbbd329f565e6"
    instance_type = "t2.micro"
    key_name = "local"
    vpc_security_group_ids = ["terra-sg"]
    

    tags = {
        Name = "t1"
    }
}

