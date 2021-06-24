## Cosmos DB

Azure Cosmos DB is flexible. At the lowest level, Azure Cosmos DB stores data in atom-record-sequence (ARS) format.
The data is then abstracted and projected as an API, which you specify when you're creating your database. 
Your choices include: 

- SQL, 
- MongoDB, 
- Cassandra, 
- Tables,
- Gremlin.
 
This level of flexibility means that as you migrate your company's databases to Azure Cosmos DB, 
your developers can stick with the API that they're the most comfortable with.

Stored procedures are the only way to ensure ACID (Atomicity, Consistency, Isolation, Durability) 
transactions because they are run on the server.

SQL Only:
UDFs are also stored on the server and are used during queries to perform computational 
logic on values or documents within the query.

## Azure SQL Database

Azure SQL Database is a relational database based on the latest stable version of the Microsoft SQL Server 
database engine.

*The Microsoft Data Migration Assistant* can generate assessment reports that provide recommendations 
to help guide you through required changes prior to performing a migration


## Azure SQL Managed Instance

Azure SQL Database and SQL Managed Instance share a common code base with the latest stable version of SQL Server. 
Есть разные приколюхи типа Azure Database Migration Service (DMS) (обещают frictionless migration), поддержка cyrilic collation при создании, Database Mail??, DDL Triggers... 
Она полностью поддерживается microsoft, от ее архитектуры становиться страшно
https://docs.microsoft.com/en-us/azure/azure-sql/managed-instance/sql-managed-instance-paas-overview 
Короче маркетинг буллшит. 

Сравнение фичей (не для слабонервных)
https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison 

Ограничения; 
нелья хранить > 2 Gb в табличке (filestream data type)
запускать команды windows xp_execute (нет в доступности файловой системы)
нет extended stored procedures (видимо тоже нет в доступности файловой системы)
bulk insert только из azure blob storage (нет файловой системы)

## Azure Database for MySQL

Based on open source, no efforts on deploy. Cheap. Addresses most of concerns.

## Azure Database for Postgres 

Based on open source, no efforts on deploy. Addresses most of concerns.

The Single Server deployment: Basic, General Purpose, and Memory Optimized
Hyperscale (Citus): super duper fast, suitable for critical apps with > 100Gb of data.


# Big data and analytics

Azure Synapse Analytics (formerly Azure SQL Data Warehouse) -  data warehousing and business intellegence.

Azure HDInsight - fully managed open source solution that compatible with Apache Spark, Apache Hadoop, Apache Kafka, 
Apache Storm, Machine Learning Services. 
Key words: extraction transformantion and loading (ETL), machine learning, IoT.

Azure Databricks - helps you unlock insights from all your data and build artificial intelligence solutions.
Key words: Python, Scala, R, Java, and SQL, as well as data science frameworks and libraries including TensorFlow, PyTorch, and scikit-learn.

Azure Data Lake Analytics is an on-demand analytics job service that simplifies big data.

# Purchasing options 

- DTU stands for Database Transaction Unit. Сбалансированная(CPU, MEMORY, DISK, IO) мера.  

- vCores - Virtual cores. Более гибкий выбор конфигурации.

# Serverless tier - not clear how to program it in terraform so far

https://docs.microsoft.com/en-gb/azure/azure-sql/database/serverless-tier-overview


# Distributed transactions in Azure SQL

Microsoft Distributed Transaction Coordinator (MSDTC) is not availiable.

But there is elastic db transactions only for .NET applications using ADO.NET

https://docs.microsoft.com/en-us/azure/azure-sql/database/elastic-transactions-overview?view=azurermps-6.13.0 
 
 
