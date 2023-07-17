provider "google" {
credentials = file ("gcp-practice-392604-396eb7215400.json")  
  project     = "gcp-practice-392604"
  
}

module "vpc" {
  source = "./modules/vpc"   
 
}


module "instance" {
  source = "./modules/instance"   
  vpc_self_link   = module.vpc.vpc_self_link
  subnet_id       = module.vpc.subnet_id  

}
