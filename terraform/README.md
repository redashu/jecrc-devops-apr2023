## Terraform getting started

### terraform running steps 

## Init 

```
PS C:\Users\Administrator\Desktop\my-terraform-cde> terraform init 

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v4.64.0...
- Installed hashicorp/aws v4
```

## PLAN 

```
PS C:\Users\Administrator\Desktop\my-terraform-cde> ls

PS C:\Users\Administrator\Desktop\my-terraform-cde> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.ashu-vm1 will be created
```


### APPLY 

```
terraform apply 


Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.ashu-vm1: Creating...
aws_instance.ashu-vm1: Still creating... [10s elapsed]
aws_instance.ashu-vm1: Still creating... [20s elapsed]
aws_instance.ashu-vm1: Creation complete after 21s [id=i-051ac3fc5b54e64f9]

```

### terraform destroy 

```
PS C:\Users\Administrator\Desktop\my-terraform-cde> terraform  destroy
aws_instance.ashu-vm1: Refreshing state... [id=i-051ac3fc5b54e64f9]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.ashu-vm1 will be destroyed
  - resource "aws_instance" "ashu-vm1" {
      - ami                                 
```


