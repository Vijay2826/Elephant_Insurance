pre-requistes:
 - Terraform v0.11.13
 - AWS account

assumptions
 - Default vpc in aws account
 - Default security group inbound and outbound rules
 - Export the aws access key, secret access key id

## how to run

``terraform apply --auto-approve``

## how to destroy

``terraform destroy --auto-approve``