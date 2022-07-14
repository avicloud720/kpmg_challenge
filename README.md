# kpmg_challenge
# Interview - coding challenge for Devops Consultant 

## AWS 3-tier architecture

- Add AWS provider configuration to point to the specific account
- Create VPC
- Create Subnets
    - Frontend subnets (2 subnets in different zones)
    - Backend subnets  (2 subnets in different zones)
    - Database subnets (2 subnets in different zones)
- Create and attach Internet Gateway to the VPC
- Create route table and associate public subnet to the route table to make it public
- Default route table is private
- Create an application load balancer which will be the entry point from outside 