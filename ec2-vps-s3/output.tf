output "hello-world" {
  description = "Print a Hello World text output"
  value       = "Hello World"
}

output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "public_udl" {
  description = "{Public URL for our Web Server}"
  value       = "https://${aws_instance.web_server.private_ip}:8080/index.html"
}

output "vpc_information" {
  description = "VPC information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has no ID of ${aws_vpc.vpc.id}"

}