# 🛠️ Setup Guide: Salesforce to S3 Integration using AWS AppFlow + Athena

- This guide outlines the step-by-step setup to integrate Saleforce with Amazon S3 using AWS AppFlow and
  query the data using AWS Athena


## 👉 - Prerequisites

- AWS Account with permissions to use:
    - Amazon AppFlow
    - Amazon S3
    - Amazon Athena


- A Salesforce Account with valid Credentials

- IAM role with requied permissions for AppFlow to access S3

- Region: Make sure all services are in the same AWS region

## 1️⃣: Create an S3 Bucket

- Go to **Amazon S3** console
- Create a new bucket e.g.-  salesforce-appflow-integration
- Disable public access and enable versioning (optional)
- Note the bucket name and region

## 2️⃣: Create AppFlow connection to Salesforce

- Go to **Amazon AppFlow** console
- Click **Connection > Create connection** in the left navigation planel
- Chose 'Saleforce' as source
- Authenticate via OAuth ot enter credentials
- Save the connection

## 3️⃣: Create AppFlow to transfer Data

- Go to **Amazon AppFlow** console
- Click **Flows** in the left navigation planel 
- Click **Create Flow** button
- Enter **Flow name** e.g- 'SalesforceToS3' -> Flow description -> CLick next
- Enter **Source** - Salesforce, **Object** - Account, **Destination** -  Amazon S3 - Choose bucket e.g. - salesforce-appflow-integration
- Map Fields (e.g. _ Name, Phone, Type etc.)
- Create and Run 