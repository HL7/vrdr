Profile: DeathLocation
Parent: USCoreLocation
Id: vrdr-death-location
Title: "Death Location"
Description: "Death Location (USCoreLocation)"
* insert RequireMetaProfile(DeathLocation)
* extension contains
    LocationJurisdictionId named nationalReportingJurisdictionId 1..1
* name 1..1
* name ^short = "name"
* description 1..1
* description ^short = "description"
* type 1..1
* type from $place-of-death (required)
* type ^short = "type"
* type ^binding.description = "Place of Death"
* address 1..1
* address ^short = "address"
* address.district from $PHVSDivisionVitalStatisticsCounty (required)
* address.district ^binding.description = "PHVS_DivisionVitalStatistics_County"
* position 0..1