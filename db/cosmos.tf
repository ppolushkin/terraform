resource "azurerm_resource_group" "rg" {
  name     = "rg-cosmos-db"
  location = "westeurope"
}

resource "azurerm_cosmosdb_account" "db" {
  name                = "pptestcosmosdb"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  offer_type          = "Standard" //only one option here
  kind                = "MongoDB"//Optional: GlobalDocumentDB or MongoDB. GlobalDocumentDB is default.

  enable_automatic_failover = false//Optional

  capabilities {
    name = "EnableServerless"
    //EnableMongo, AllowSelfServeUpgradeToMongo36, MongoDBv3.4 and mongoEnableDocLevelTTL, EnableAggregationPipeline,
    //
    //EnableServerless
    //
    //DisableRateLimitingResponses
    //
    //EnableCassandra, EnableGremlin, EnableTable,
  }

  consistency_policy {
    //https://docs.microsoft.com/en-us/learn/modules/distribute-data-globally-with-cosmos-db/5-data-consistency-levels
//    Strong 	Linearizability. Reads are guaranteed to return the most recent version of an item.
//    Bounded Staleness 	Consistent Prefix. Reads lag behind writes by at most k prefixes or t interval.
//    Session 	Consistent Prefix. Monotonic reads, monotonic writes, read-your-writes, write-follows-reads.
//    Consistent Prefix 	Updates returned are some prefix of all the updates, with no gaps.
//    Eventual 	Out of order reads.
    // 73% of Azure Cosmos DB tenants use session consistency
    // 20% prefer bounded staleness
    consistency_level       = "Session"
    // for mongo api it is more dificult:
    // https://docs.microsoft.com/en-us/azure/cosmos-db/mongodb-consistency
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = azurerm_resource_group.rg.location
    failover_priority = 0
  }

//  geo_location {
//    location          = var.failover_location
//    failover_priority = 1
//  }



}


//Request Units - (RU) is measure of resources consumption.
//Depends on how much resources requires your call
//In case of exceeding limit of RU/s - you have to try next time (next second)
//There is header that inform you about consumed RUs