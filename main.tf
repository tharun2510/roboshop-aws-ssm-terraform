resource "aws_ssm_parameter" "parameter" {
  count= length(var.parameters)
  name  = var.parameters[count.index].name
  type  = "SecureString"
  value = var.parameters[count.index].value
  key_id = "33f26d4d-10c1-4029-848d-fc8a4857d4b3"
}