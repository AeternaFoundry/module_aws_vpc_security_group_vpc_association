output "vpc_security_group_vpc_associations_region" {
  description = "Map of region values across all vpc_security_group_vpc_associations, keyed the same as var.vpc_security_group_vpc_associations"
  value       = { for k, v in aws_vpc_security_group_vpc_association.vpc_security_group_vpc_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_security_group_vpc_associations_security_group_id" {
  description = "Map of security_group_id values across all vpc_security_group_vpc_associations, keyed the same as var.vpc_security_group_vpc_associations"
  value       = { for k, v in aws_vpc_security_group_vpc_association.vpc_security_group_vpc_associations : k => v.security_group_id if v.security_group_id != null && length(v.security_group_id) > 0 }
}
output "vpc_security_group_vpc_associations_state" {
  description = "Map of state values across all vpc_security_group_vpc_associations, keyed the same as var.vpc_security_group_vpc_associations"
  value       = { for k, v in aws_vpc_security_group_vpc_association.vpc_security_group_vpc_associations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vpc_security_group_vpc_associations_vpc_id" {
  description = "Map of vpc_id values across all vpc_security_group_vpc_associations, keyed the same as var.vpc_security_group_vpc_associations"
  value       = { for k, v in aws_vpc_security_group_vpc_association.vpc_security_group_vpc_associations : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

