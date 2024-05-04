variable "vm_template" {
  type = object({
    name            = string
    cpu             = number
    memory          = number
    disksize        = number
    storage_pool    = string
    os_image_name   = string
    os_volume_name  = string
    network_name    = string
    cloud_init_file = string
    os_image_url    = string
  })

  description = "Template configuration for the VM"
}
