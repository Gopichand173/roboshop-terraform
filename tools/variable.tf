variable "zone_id" {
	default = "Z0546615GFL3PHM1TZU6"
}
variable "ami"{
	default = "ami-0220d79f3f480ecf5"
}
variable "tools" {
	default = {
		vault = {
			instance_type = "t3.small"

		}
	}
}