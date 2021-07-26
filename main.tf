resource "aws_cloudformation_stack" "jitsi" {
  count = var.active == true ? 1 : 0
  name = var.stack_name == "" ? "marketplace-jitsi" : var.stack_name
  capabilities = ["CAPABILITY_IAM"]
  parameters = {
    IngressCidrBlock = var.ingress_cidr_block
    JitsiHostname = var.jitsi_hostname
    JitsiInterfaceAppName = var.jitsi_interface_app_name
    JitsiInterfaceDefaultRemoteDisplayName = var.jitsi_interface_default_remote_display_name
    JitsiInterfaceNativeAppName = var.jitsi_interface_native_app_name
    JitsiInterfaceShowBrandWatermark = var.jitsi_interface_show_brand_watermark
    JitsiInterfaceShowWatermarkForGuests = var.jitsi_interface_show_watermark_for_guests
    JitsiInterfaceBrandWatermark = var.jitsi_interface_brand_watermark
    JitsiInterfaceBrandWatermarkLink = var.jitsi_interface_brand_watermark_link
    JitsiInterfaceWatermark = var.jitsi_interface_watermark
    JitsiInterfaceWatermarkLink = var.jitsi_interface_watermark_link
    Route53HostedZoneName = var.route53_hosted_zone_name
    VpcId = var.vpc_id
    VpcPrivateSubnetId1 = var.vpc_private_subnet_id_1
    VpcPrivateSubnetId2 = var.vpc_private_subnet_id_2
    VpcPublicSubnetId1 = var.vpc_public_subnet_id_1
    VpcPublicSubnetId2 = var.vpc_public_subnet_id_2
  }
  # release 1.0.2
  template_url = "https://s3.amazonaws.com/awsmp-fulfillment-cf-templates-prod/ac194df3-6564-4b73-933a-99a8d35dac92.1d59fca9-ebcf-4528-ad36-11df6c3434e6.template"
  on_failure = "DELETE"
}
