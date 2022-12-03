output puppet_master_instance_id {
  value       = module.puppet_master.id
  sensitive   = false
  description = "puppet_master_instance_id"
}

output puppet_slave_instance_ids {
  value       = module.puppet_slave.*.id
  sensitive   = false
  description = "puppet_slave_instance_ids"
}