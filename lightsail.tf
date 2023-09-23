resource "aws_lightsail_instance" "light_sail_1" {
  name              = "Asiamah"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum update -y && sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && sudo yum install -y unzip wget && sudo wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip && sudo unzip main.zip && sudo rm -rf /var/www/html/* && sudo cp -r static-resume-main/* /var/www/html/"
}