//variables.tf
variable "name" {
    default = "pamswifi-unifi-controller"
}
variable "ami_id" {
    default = "ami-0cfee17793b08a293"
}
variable "ssh_key_pair_name" {
    default = "lss"
}
variable "ingress_cidr_block" {
    type = "list"
    default = [ "0.0.0.0/0" ]
}