Profile: FuneralHome
Parent: USCoreOrganizationProfile
Id: vrdr-funeral-home
Title: "Funeral Home"
Description: "Funeral Home (USCoreOrganization)"
* insert RequireMetaProfile(FuneralHome)
* id 0..1
* id ^short = "id"
* identifier 0..*
* type 1..1
* type = $organization-type#bus "Non-Healthcare Business or Corporation" (exactly)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"