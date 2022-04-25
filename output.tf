output "vpc-id-us-east-1" {
  value = aws_vpc.vpc_master.id
}

output "vpc-id-us-west-2" {
  value = aws_vpc.vpc_master_oregon.id
}

output "peering-connection-id" {
  value = aws_vpc_peering_connection.useast1-uswest-2.id
}

output "jenkins-master-public-ip" {
  value = aws_instance.jenkins-master.public_ip
}

output "jenkins-worker-public-ips" {
  value = {
    for instance in aws_instance.jenkins-worker-oregon :
    instance.id => instance.public_ip
  }
}

output "LB-DNS-NAME" {
  value = aws_lb.application-lb.dns_name
}

output "url" {
  value = aws_route53_record.jenkins.fqdn
}