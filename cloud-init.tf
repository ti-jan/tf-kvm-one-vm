data "template_file" "user_data" {
  template = file("${path.module}/${var.vm_template.cloud_init_file}")
}

resource "libvirt_cloudinit_disk" "cloudinit" {
  name      = "${var.vm_template.name}-cloudinit.iso"
  user_data = data.template_file.user_data.rendered
  pool      = var.vm_template.storage_pool
}
