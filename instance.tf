resource "aws_instance" "unifi" {

    ami = "${var.ami_id}"
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.unifi_sg.id}"]
    key_name = "${var.ssh_key_pair_name}"
    subnet_id = "${aws_subnet.subnet-1a.id}"
    user_data = "${file("user_data.sh")}"

    tags {
        Name = "unifi"
    }
}