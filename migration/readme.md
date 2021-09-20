### Migrate VM-Ware (IBM??), Hyper-V (Microsoft) clusters
Assess - check what vm could be migrated. Sizes. Azure Migration appliance. 
Migrate - replicate disks to azure. Azure Recovery Service?
Optimize azaz
Monitor


### [Support matrix for Hyper-V migration](https://docs.microsoft.com/en-us/azure/migrate/migrate-support-matrix-hyper-v-migration)
- OS: WIndows, Linux
- Disk size 	up to 2 TB OS disk, 4 TB data disks
- All encrypted is not supported

### [Support matrix for WMWare migration](https://docs.microsoft.com/en-us/azure/migrate/migrate-support-matrix-vmware-migration)
- VMware vCenter Server >= 5.5
- OS: Windows, Linux 
- Disk size 	up to 2 TB OS disk, 32! TB data disks


### Azure Migrate Appliance
- Tool that installs on cluster, gather stats to Azure migrate project
- Provided as OVA (Open Virtual Appliance) file for WMWare that contains info about VM and disks and as VHD (loved Microsoft format) for Hyper-V 
- Connects to VWWare vCentral service (? Hyper-V), grabs stats and sends to Azure Migrate project

### Migrate Azure Recovery Service agent (MARS)
- Installs on each node
- Copy data to azure
