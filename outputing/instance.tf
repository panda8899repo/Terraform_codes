resource "aws_instance" "example" {
    ami = "${lookup(var.WIN_AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"
    provisioner "local-exec" {
        command = "echo ${aws_instance.example.private_ip} >> privateip.txt"
    
    }
}
output "ip" {
    value = "${aws_instance.example.public_ip}"
}