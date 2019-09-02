resource "aws_instance" "unifi" {

    ami = "${var.ami_id}"
    instance_type = "t3a.large"
    security_groups = ["${aws_security_group.unifi_sg.id}"]
    key_name = "${var.ssh_key_pair_name}"
    subnet_id = "${aws_subnet.subnet-1a.id}"
    user_data = "${file("user_data.sh")}"
    root_block_device {
        volume_type = "gp2"
        volume_size = "60"
        delete_on_termination = "false"
    }

    tags {
        Name = "unifi"
    }
}

// resource "aws_ebs_volume" "unifi-volume" {
//   availability_zone = "us-east-1a"
//   size              = 60

//   tags {
//     Name = "unifi"
//   }
// }

// resource "aws_volume_attachment" "unifi-volume-attachment" {
//   device_name = "/dev/sda2"
//   instance_id = "${aws_instance.unifi.id}"
//   volume_id   = "${aws_ebs_volume.unifi-volume.id}"
// }