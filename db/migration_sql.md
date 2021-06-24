https://docs.microsoft.com/en-us/learn/modules/migrate-sql-server-relational-data/3-migration-overview

Data Migration Assistant is a client-side tool that you can install on a Windows-compatible workstation or server.
Azure Database Migration Service is a fully-managed Azure service that provides automated, seamless data migrations from multiple sources into the Azure data platforms.

1. Assesment step. who is using db, what db need to be migrated
2. Prepere fixes to make db compatible with az sql db. Use Data Migration Assistant
3. convert apply fixes
4. migrate schema. Data Migration Assistant  can run these scripts for you 
5. migrate data. Use Azure Database Migration Service

Database Migration Service can be run in two modes, online and offline. 
When it's running in online mode, there are two additional steps. 
1) The first is sync, in which any changes made to the data in the source system after the migration
2) The second is cutover, in which the source database is taken offline, 
and the new Azure SQL Database becomes available.

Offline migration
You stop app, migrate app, start app

Online migration - requires Premium Azure SQL tier
You migrate with short outage

migration could be done from on-premises with the help of worker (exe app) that you should
install and register later on.