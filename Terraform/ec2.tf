resource "aws_instance" "simple_web_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = "Simple-webserver"
  }
}
