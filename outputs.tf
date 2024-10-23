// Check the User Creations

output "admin" {
  value = module.admin.admin
}

output "frontend" {
  value = module.dev.frontend
}

output "backend" {
  value = module.dev.backend
}

output "gen-ai" {
  value = module.dev.gen-ai
}

output "rec-ai" {
  value = module.dev.rec-ai
}

output "cloud-uno" {
  value = module.eng.cloud-uno
}

output "cloud-ethan" {
  value = module.eng.cloud-ethan
}
