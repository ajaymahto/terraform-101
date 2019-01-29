/* aws_key_pair is a type of resource in terraform. */
resource "aws_key_pair" "ajkey" {
  key_name = "ajkey"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}

resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  /* That's how we refer to existing resources <type>.<name>.<attribute> */
  key_name = "${aws_key_pair.ajkey.key_name}"

  /* Similar to Ansible module copy/template <source - destination> */
  provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }

  /* Similar to command or shell in ansible.*/
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }
  connection {
    user = "${var.INSTANCE_USERNAME}"
    private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
  }
}
