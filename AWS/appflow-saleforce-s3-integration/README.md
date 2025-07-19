📌 AWS AppFlow and Salesforce integration

🚀 Overview

This project demonstrates a complete cloud-native integration use case - transferring Salesforce CRM data to Amazon S3 using AWS AppFlow and querying it via Amazon Athena.

🛠️ Tools & Services Uses

1. SalesForce (Developer Account)
2. AWS AppFlow
3. Amazon S3
4. Amazon Athena
5. AWS IAM (Permissions)
6. GitHub (for documentation)

🗒️ Key Steps Followed

✅ Setup Salesforce dev account with Sample data
✅ Created S3 bucker for data storage
✅ Created IAM role with proper trust policy
✅ Configured AWS AppFlow:

    * Salesfore -> S3
    * Mapped fields, set destination

✅ Ran the flow to export records
✅ Queried S3 files using Athena (SQL)

💡 Key Learnings

- Real-world use of AppFLow for low-code integration
- IAM role trust policies or 3rd party ststems
- Building Athena table over JSON/CSV files

📌 Useful Files

- setup/appflow-setup.md
    - Flow configuration notes

- queries/saleforce_data_query.sql 
   - Athena SQL file

- troubleshooting/issues-and-fixes.md
    - Errors I solved

