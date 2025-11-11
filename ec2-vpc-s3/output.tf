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
  value       = "http://${aws_instance.ubuntu_server.public_ip}"
}

output "vpc_information" {
  description = "VPC information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has no ID of ${aws_vpc.vpc.id}"

}

output "public_ip_model" {
  value = module.server.public_ip
}

output "public_dns" {
  value = module.server.public_dns

}

output "size" {
  value = module.server.size

}

output "public_ip" {
  description = "This is the public IP of my web server"
  value       = aws_instance.web_server.public_ip
  sensitive   = true
}

output "phone_number" {
  description = "Phone Number"
  value       = var.phone_number
  sensitive   = true

}

output "data-bucket-domain-arn" {
  value = data.aws_s3_bucket.data_bucket.arn

}

output "data-bucket-domain-name" {
  value = data.aws_s3_bucket.data_bucket.bucket_domain_name

}

output "data-bucket-domain-region" {
  value = "The following ${data.aws_s3_bucket.data_bucket.id} bucket is located in ${data.aws_s3_bucket.data_bucket.region}"

}


output "max_value" {
  value = local.maximum
}


output "min_value" {
  value = local.minimum
}
