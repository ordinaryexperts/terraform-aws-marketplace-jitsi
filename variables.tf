variable "active" {
  description = "Controls whether the CloudFormation stack should be deployed."
  default = true
  type = bool
}

variable "ingress_cidr_block" {
  description = "Required: A CIDR block to restrict access to the Jitsi application. Leave as 0.0.0.0/0 to allow public access from internet."
  default = "0.0.0.0/0"
}

variable "instance_type" {
  description = "The EC2 instance type for the application Auto Scaling Group."
  default = "t3.xlarge"
}

variable "jitsi_hostname" {
  description = "The hostname to access Jitsi. E.G. 'jitsi.internal.mycompany.com'"
}

variable "jitsi_interface_app_name" {
  description = "Customize the app name on the Jitsi interface."
  default = "Jitsi Meet"
}

variable "jitsi_interface_brand_watermark" {
  default = ""
  description = "Optional: Provide a URL to a PNG image to be used as the brand watermark logo image in the upper right corner. File should be publically available for download."
}

variable "jitsi_interface_brand_watermark_link" {
  description = "Optional: Provide a link destination for the brand watermark logo image in the upper right corner."
  default = "http://jitsi.org"
}

variable "jitsi_interface_default_remote_display_name" {
  description = "Customize the default display name for Jitsi users."
  default = "Fellow Jitster"
}

variable "jitsi_interface_native_app_name" {
  description = "Customize the native app name on the Jitsi interface."
  default = "Jitsi Meet"
}

variable "jitsi_interface_show_brand_watermark" {
  description = "Display the watermark logo image in the upper left corner."
  default = true
  type = bool
}

variable "jitsi_interface_show_watermark_for_guests" {
  description = ""
  default = true
  type = bool
}

variable "jitsi_interface_watermark" {
  description = "Optional: Provide a URL to a PNG image to be used as the watermark logo image in the upper left corner. File should be publically available for download."
  default = ""
}

variable "jitsi_interface_watermark_link" {
  default = "http://jitsi.org"
  description = "Optional: Provide a link destination for the Jitsi watermark logo image in the upper left corner."
}

variable "notification_email" {
  description = "Specify an email address to get emails about deploys, Let's Encrypt, and other system events."
  default = ""
}

variable "route53_hosted_zone_name" {
  description = "Required: Route 53 Hosted Zone name in which a DNS record will be created by this template. Must already exist and be the domain part of the jitsi_hostname parameter, without trailing dot. E.G. 'internal.mycompany.com'"
}

variable "stack_name" {
  description = "Desired name of Jitsi CloudFormation Stack."
  default = ""
}

variable "vpc_id" {
  description = "Optional: Specify the VPC ID. If not specified, a VPC will be created."
  default = ""
}

variable "vpc_private_subnet_id_1" {
  description = "Optional: Specify Subnet ID for first private subnet."
  default = ""
}

variable "vpc_private_subnet_id_2" {
  description = "Optional: Specify Subnet ID for second private subnet."
  default = ""
}

variable "vpc_public_subnet_id_1" {
  description = "Optional: Specify Subnet ID for first public subnet."
  default = ""
}

variable "vpc_public_subnet_id_2" {
  description = "Optional: Specify Subnet ID for second public subnet."
  default = ""
}
