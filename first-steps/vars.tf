variable AWS_SECRET_KEY {}
variable AWS_ACCESS_KEY {}
variable AWS_REGION {
	default = "ap-south-1"
}
/* Site for searching for relevant ec2 AMIs according to
 region : https://cloud-images.ubuntu.com/locator/ec2/ 
*/
variable "AMIS" {
	type = "map"
	default = {
		"ap-south-1" = "ami-825e34ed"
	}
}
