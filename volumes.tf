resource "libvirt_volume" "os_image" {
  name   = var.vm_template.os_image_name
  pool   = var.vm_template.storage_pool
  source = var.vm_template.os_image_url
  format = "qcow2"
}

resource "libvirt_volume" "os_volume" {
  name           = var.vm_template.os_volume_name
  base_volume_id = libvirt_volume.os_image.id
  pool           = var.vm_template.storage_pool
  size           = var.vm_template.disksize * 1024 * 1024 * 1024  # Convert GB to bytes
}
