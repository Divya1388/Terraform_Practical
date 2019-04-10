variable instance_type {
  default = "t2.micro"
}

variable instance_ami {
  type = "map"

  default {
    "us-east-1" = "ami-0de53d8956e8dcf80"
    "us-east-2" = "ami-02bcbb802e03574ba"
  }
}
