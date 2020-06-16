provider "aws" {
  region  = "ap-south-1"
  profile = "vkuser"
}


resource "tls_private_key" "mykey1a" {
  algorithm = "RSA"
}
output "key_ssh" {
  value = tls_private_key.mykey1a.public_key_openssh
}

output "key_pem" {
  value = tls_private_key.mykey1a.public_key_pem
}

resource "aws_key_pair" "opensshkey"{
  depends_on = [ tls_private_key.mykey1a ]
  key_name   = "mykey1a"
  public_key = tls_private_key.mykey1a.public_key_openssh
}




resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS HTTP inbound traffic"
  vpc_id      = "vpc-2d9a8745"

  ingress     = [ {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    ipv6_cidr_blocks = null
    prefix_list_ids  = null
    security_groups  = null
    self             = null
    cidr_blocks      = ["0.0.0.0/0"]
      },  
      {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    ipv6_cidr_blocks = null
    prefix_list_ids  = null
    security_groups  = null
    self             = null
    cidr_blocks      = ["0.0.0.0/0"]
     }
   ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags    = {
    Name  = "allow_tls"
  }
}




resource "aws_instance" "myos" {
   depends_on      = [ tls_private_key.mykey1a, 
                       aws_security_group.allow_tls,  ]
   ami             =  "ami-0447a12f28fddb066"
   instance_type   =  "t2.micro"
   key_name        =  "mykey1a"
   security_groups =  [ "allow_tls" ]

   connection   {
       type        = "ssh"
       user        = "ec2-user"
       private_key = tls_private_key.mykey1a.private_key_pem
       host        = aws_instance.myos.public_ip
   }
   
   provisioner "remote-exec"  {
       inline      = [
         "sudo yum install httpd -y",
         "sudo yum install git -y",
         "sudo systemctl start httpd",
         "sudo systemctl enable httpd"
       ]
   }

   tags            = {
      Name         = "terraos"
   }
}


resource "aws_ebs_volume" "tervol" {

    depends_on        = [ aws_instance.myos ]
    availability_zone = aws_instance.myos.availability_zone
    size              = 1
    tags              = {
            Name = "tervol"
    }
} 


resource "aws_volume_attachment" "attachebs" {
    depends_on        = [ aws_ebs_volume.tervol ]
    device_name    = "/dev/sdf"
    volume_id      = aws_ebs_volume.tervol.id
    instance_id    = aws_instance.myos.id
    force_detach   = true
}


resource "null_resource" "create_partition" {
  depends_on        = [   aws_volume_attachment.attachebs ]
  connection {
        type        = "ssh"
	user        = "ec2-user"
	private_key = tls_private_key.mykey1a.private_key_pem
	host        = aws_instance.myos.public_ip
  }
  
  provisioner "remote-exec" {
       inline = [
	  "sudo mkfs.ext4 /dev/xvdf",
	  "sudo mount /dev/xvdf /var/www/html",
	  "sudo rm -rf /var/www/html/*",
	  "sudo git clone https://github.com/vikashkr437/TestCodes.git /var/www/html/",
	
	]
  
  }

}









resource "aws_s3_bucket" "ters3" {
    depends_on            =[  aws_instance.myos, ]
    bucket                = "vkb001"
    acl                   = "private"
    region                = "ap-south-1"

  tags = {
    Name = "webbuc"
  }
}


resource "aws_s3_bucket_object" "pics" {
  depends_on   =  [ aws_s3_bucket.ters3,  ]
  bucket       = aws_s3_bucket.ters3.id
  key          = "sunflower.png"
  source       = "C:/Users/Vikash/Desktop/pics1/sunflower.png"
  content_type = "image/png"
  acl          = "public-read"
}







resource "aws_cloudfront_origin_access_identity" "terid" {
depends_on = [  aws_s3_bucket_object.pics, ]
}



resource "aws_cloudfront_distribution" "tercf" {
   depends_on      =   [ aws_cloudfront_origin_access_identity.terid, ]
   origin {
    domain_name    = aws_s3_bucket.ters3.bucket_regional_domain_name
    origin_id      = "s3_origin_id"
    s3_origin_config {
       origin_access_identity = aws_cloudfront_origin_access_identity.terid.cloudfront_access_identity_path
     }
    }
   enabled             = true
   is_ipv6_enabled     = true
   default_root_object = "sunflower.png"
   default_cache_behavior {
      allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
      cached_methods   = ["GET", "HEAD"]
      target_origin_id = "s3_origin_id"
      forwarded_values {
         query_string  = false
          cookies {
          forward      = "none"
      }
    }
   viewer_protocol_policy = "allow-all"
   min_ttl                = 0
   default_ttl            = 3600
   max_ttl                = 86400
   }
   price_class = "PriceClass_200"
   restrictions {
     geo_restriction {
        restriction_type = "none"
      
      }
    }
   tags = {
      Environment = "production"
    }
   viewer_certificate {
        cloudfront_default_certificate = true
   }
  connection {
        type        = "ssh"
	user        = "ec2-user"
	private_key = tls_private_key.mykey1a.private_key_pem
	host        = aws_instance.myos.public_ip
  }
}



output "cloudfront_ip" {
  value = aws_cloudfront_distribution.tercf.domain_name
}

output "ec2_ip" {
value = aws_instance.myos.public_ip
}