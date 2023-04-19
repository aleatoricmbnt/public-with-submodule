resource "random_pet" "submodule" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

output "submodule_pet" {
  value = resource.random_pet.submodule_repo.id
}

module "nested-00" {
  source = "./nested-00"
}

output "nested_00_pet" {
  value = module.nested-00.nested_00_pet
}
