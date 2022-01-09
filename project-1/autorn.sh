aws cloudformation deploy --template VPC.yaml --stack VPC-CF-Stack
aws cloudformation deploy --template subnets.yaml --stack subnets-CF-Stack
aws cloudformation deploy --template SecurityGroups.yaml --stack sg-CF-stack
aws cloudformation deploy --template InternetGW.yaml --stack IGW-CF-stack