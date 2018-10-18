module "server-us-east-2" {
  source = "./server"
  region       = "us-east-2"
  num_webs     = "${var.num_webs}"
  identity     = "${var.identity}-us-east-2"
  ami          = "${lookup(var.ami, "us-east-2")}"
  ingress_cidr = "${var.ingress_cidr}"
}

output "public_dns_us_east_2" {
  value = "${module.server-us-east-2.public_dns}"
}
