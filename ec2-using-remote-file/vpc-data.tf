data "terraform_remote_state" "vpc" {

  backend = "remote"
  config = {
    organization = "shishir_tcs"
    workspaces = {
      name = "shishirterraf-example-demo"
    }

  }

}
