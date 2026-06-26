module "my-local-testing-module" {
  source         = "./sunil_module"
  env            = "testing"
  ami            = "ami-0152204c1a187337c"
  instance-type  = "t3.micro"
  bucket-name    = "sunil-1k99-9"
  instance-count = 1
}

# module for prod
module "my-local-prod-module" {
  source         = "./sunil_module"
  env            = "prod"
  ami            = "ami-0152204c1a187337c"
  instance-type  = "t3.micro"
  bucket-name    = "sunil-1k99-9"
  instance-count = 3
}