module "example" {
  # source = "github.com/faudeltn/asg-dns-handler.git=v1.1"
    source = "git::https://github.com/faudeltn/asg-dns-handler.git?ref=v1.4"
    
    autoscale_route53zone_id   = local.internal_zone_id
    domain = local.internal_zone_name

    autoscale_handler_unique_identifier = "holla-world-asg-dns-autoscale"
    # autoscale_handler_unique_identifier = local.autoscale_handler_unique_identifier[terraform.workspace]

    tags = {
        Customer             = "YALLALABS"
        Terraform            = "true"
        Environment          = "DEV"
    }
}
