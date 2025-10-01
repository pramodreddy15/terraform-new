resource "aws_instance" "rhel" {
  ami                                  = "ami-0fd3ac4abb734302a"
  availability_zone                    = "us-east-1c"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  force_destroy                        = false
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "pramod-keypair"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.28.186"
  region                               = "us-east-1"
  secondary_private_ips                = []
  security_groups                      = ["launch-wizard-4"]
  source_dest_check                    = true
  subnet_id                            = "subnet-08d6abe78aea3b92c"
  tags = {
    Name = "RHEL"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = ["sg-07f406a67c2db9c38"]

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  credit_specification {
    cpu_credits = "standard"
  }

  enclave_options {
    enabled = false
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  primary_network_interface {
    network_interface_id = "eni-02662e8d696e0aa5c"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    throughput            = 125
    volume_size           = 10
    volume_type           = "gp3"
  }
}
