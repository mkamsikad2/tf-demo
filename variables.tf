variable "instance_type" {
  default = "t2.micro"  
}

variable "tags" {
  default = {
    Name = "template"
  }
}

variable "sg" {
  type = list(string)
  default = ["sg-003a649b1b0994cc8"]
}

variable "folder_name" {
  type = set(string)
}