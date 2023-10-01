# Implementing Network Firewalls to Enhance Web Server Security

![network_firewall drawio](https://github.com/pradip2994/Network_Firewall/assets/124191442/3518e330-65a1-4d38-84b0-a1d8d86927cb)

## Create VPC 

![Screenshot 2023-10-01 032355](https://github.com/pradip2994/Network_Firewall/assets/124191442/15781fff-efc6-4e8c-bae6-bcdbbf9e0b0f)

### Your vpc has been created

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/3f0b0aa0-b211-45a1-98b7-e70ae1d99dc7)

## Create Internet Gateway 

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/638b8b6f-7f72-4757-878b-82bac041d6f5)

### Attach internet gateway to VPC

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/c50b3b74-c7f1-4d96-8fe8-f14412f51b4a)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/aec5b5a0-3b1a-4373-85e1-94fd9f7de478)

### Internet Gateway Created

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/d783a026-6a8a-4a64-9839-8607f64026d6)

## Create subnets Firewall subnet and webserver subnet

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/2b224351-747b-4b79-8b5a-a5bc92f1011c)

## Create Route Table firewall, webserver, IGW route table and associate it with there subnet.

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/39e88a5e-174e-4f78-b02d-bd6d7d47621d)

### Associate internet gateway to route table using Edge association in route table of IGW-RT

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/521b860f-440e-42ca-aa5e-45359f495d64)

### Now you can see in image below each Association with Route Table

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/2a5fd97c-2fff-4473-a605-b2ae41980872)

### Now give Internet Routes to FIREWALL-RT

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/07af8efe-2aac-44cb-99f3-dc94360108b1)

## Now Create AWS Network Firewall

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/670eea32-6d1b-47a2-9e8a-8d4cd12722ef)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/170efa7e-ae8e-449a-b54f-9fd1416690dd)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/beeef465-3352-47b8-8d8c-1bd395382f4d)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/481f0af7-535a-437d-82d2-a96476c5f664)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/0a47954e-06e2-4d87-a98f-2dd05a20a266)

### You can see that Network Firewall is in Provisioning state, it will be created

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/0ac3d425-8ee3-45fb-a000-070ffd0e3ef0)

### Now Go to Firewall policies which you have created

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/a436aa21-d81e-4bc4-be3d-d45b09446c5c)

### Navigate to bottem go to Statefull rule group section, click on action, click on create statefull rule group

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/26df2c36-c9d1-419c-8308-705843762e2a)

### Choose the rule group type and click on Standard stateful rule

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/176e0f2b-5561-4e68-9162-d4126381a179)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/38a972a9-f6d5-4964-aff2-8defa24e6473)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/8f743d00-846e-4fa9-9308-1c49cac7e564)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/db1e5916-0379-4330-b270-831d90956750)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/db27a7e3-676f-4899-a6cc-ad0f295217d3)

### For allowing HTTPS you have to select TCP and add port 443 then click on add.

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/a7ee49e3-8200-438a-b57b-1f1fbf29557f)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/a30e1199-bd8c-4493-af03-307e2c1f9b7c)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/2a65108b-60e1-41db-9ddf-7d0860b1a24b)

## Now go to Endpoints, you can see that network firewall automaticall created Gateway Endpoint, and endpoint type is Gateway Loadbalancer Endpoint.

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/aabcb370-7a9e-4ae4-b8f9-584f8bbc6c13)

### Now go to the route table select WEBSERVER-RT and give 0.0.0.0/0 Route to Gateway Loadbalancer 

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/6ec46ac6-a1f1-4f1a-8130-d242b9c10739)

### Similarly go to IGW-RT that is internet gateway route table, give webserver subnet route to Gateway Loadebalancer Endpoint.

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/516c51d7-68ab-43c3-b2a3-b22329f8b296)

## Now create Security group for WEBSERVER 

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/93167e76-e1cd-4021-b51f-96439dca60c8)

## Launch an Instance in webserver subnet and also select VPC

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/40427d01-d962-4d51-86cb-656d05c9d81a)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/f1dcea56-f4d9-4c63-a3bd-6397d95ab25d)

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/17e71ac1-5759-4fc7-a9fc-aabb4b0fcb1b)

### Now connect using SSH 

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/090d5a49-40d6-4743-8968-82a179db9f6d)

### Now create Bash Script with name webserver.sh and give permission and execute it 

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/17d5a4b2-c93d-4b3a-a76f-37afbc343fdd)

## Now copy and paste instance public IP address in Browser 

![image](https://github.com/pradip2994/Network_Firewall/assets/124191442/21a3a2d1-ef5f-4005-a66b-98f76c7ec83f)

## Thankyou for reading!
