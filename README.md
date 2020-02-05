pre-requistes:
 - Terraform v0.11.13
 - AWS account

assumptions
 - Default vpc in aws account
 - Default security group inbound and outbound rules
 - Export the aws access key, secret access key id
 

## how to run

Run the command  in  CLI terminal ``terraform apply --auto-approve``

## what is running?
when terraform apply command executes then a ec2 instance spins up and once the system and instance checks are completed successfully , then the ec2 instance webserver is ready to accept incoming connections

## how to destroy

Run the command in  CLI terminal ``terraform destroy --auto-approve``
