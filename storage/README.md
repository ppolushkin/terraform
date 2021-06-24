
# Choose storage:

https://docs.microsoft.com/en-us/learn/modules/choose-storage-approach-in-azure/5-choose-the-right-azure-service-for-your-data

## For Product catalog data 
- Data classification: Semi-structured
- Operations: OLTP (Online Transaction Processing)
- Latency & throughput: High throughput and low latency.
- Transactional support

*Use CosmoDb* because
 - semi-structured data, 
 - supports SQL for queries and every property is indexed by default,
 - ACID-compliant 
 - enables you to replicate your data anywhere in the world  

## For Photos and videos
- Data classification: Unstructured
- Operations: download by id
- Latency & throughput: Retrievals by ID need to support low latency and high throughput. Creates and updates can have higher latency than read operations
- Transactional support: Not required

*Use Azure Blob storage* because of CDN

## Business data
- Data classification: Structured
- Operations: OLAP (Online Analytical Processing)
- Latency & throughput: Some latency in the results is expected based on the complex nature of the queries.
- Transactional support: Not required

*Use Azure SQL* 
- as business only know SQL 
- it is integrated with Azure Analysis Services (BI tool)
 
 
## Unclear
 Azure Table Storage?