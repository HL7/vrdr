Profile: DispositionLocation
Parent: USCoreLocation
Id: vrdr-disposition-location
Title: "Disposition Location"
* insert boilerplate
* name 1..1
* name ^short = "name"
* description 0..1
* description ^short = "description"
* type 0..1
* type ^short = "type"
* type.coding from $v3-ServiceDeliveryLocationRoleType (extensible)
* type.coding ^binding.description = "v3.ServiceDeliveryLocationRoleType"
* address 1..1
* address ^short = "address"
* physicalType 1..1
* physicalType ^short = "physicalType"
* physicalType.coding from LocationType (required)
* physicalType.coding ^binding.description = "LocationType"