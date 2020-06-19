
resource "null_resource" "cluster" {
  # Changes to any instance of the cluster requires re-provisioning
  triggers = {
    uuid=uuid()
  }

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "ls -la"
  }
}
