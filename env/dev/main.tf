module "dev_vm" {
  source                   = "../../modules/vm"
  environment              = "dev"
  mail_secret_key          = var.MAIL_SECRET_KEY
  mail_user                = var.MAIL_USER
  admin_username           = "adminuser"
  domain                   = var.DOMAIN
  resource_group           = "IN-RG-JaramilloT"
  nic_name                 = "IN-NIC-JaramilloT"
  mail_service             = var.MAIL_SERVICE
  security_group_name      = "IN-SG-JaramilloT"
  ssh_key_path             = "./keys/712incident_server"
  port                     = var.PORT
  server_name              = "IN-Server-JaramilloT" 
  location                 = "eastus2"
  mapbox_access_token      = var.MAPBOX_ACCESS_TOKEN
  mongo_url                = var.MONGO_URL 
  subnet_name              = "IN-SUBNET-JaramilloT"
  mongo_init_root_username = var.MONGO_INITDB_ROOT_USERNAME
  mongo_init_root_password = var.MONGO_INITDB_ROOT_PASSWORD
  mongo_db                 = var.MONGO_DB
  ip_name                  = "IN-IP-JaramilloT"
  vnet_name                = "IN-VNET-JaramilloT"
}

 output "public_ip" {
    value = module.dev_vm.IN_IP_Output
  
  }   
