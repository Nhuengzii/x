variable "file_content" {
  description = "Content for the hello.txt file"
  type        = string
  default     = "Hello from Terraform variable!"
}

resource "null_resource" "local_provision" {
  provisioner "local-exec" {
    command = "echo 'Hello World from Terraform local provisioner'"
  }

  provisioner "local-exec" {
    command = "ansible-playbook playbook.yml"
  }
}