# Demo - 2
1. To create an AWS key pair using locallly generated ssh-key pair.
   - ssh-keygen -f <filename>
2. Use that keypair to copy a script into the instance launched.
3. Execute that script using provisioner.
Note: Load data from a file using file directive.

Provisioner in terraform is similar to ansible. Except that it has git only few actions,
such as remote-exec, file, etc. to copy and execute scripts into the provisioned machine. 
