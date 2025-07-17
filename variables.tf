variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  default     = "flask-key"  # Replace if your key is named differently
}

