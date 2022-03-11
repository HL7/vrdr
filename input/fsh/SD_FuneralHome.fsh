Profile: FuneralHome
Parent: USCoreOrganizationProfile
Id: vrdr-funeral-home
Title: "Funeral Home"
Description: "Funeral Home (USCoreOrganization)"
* insert RequireMetaProfile(FuneralHome)
* id 0..1
* type 1..1
* type = $organization-type#bus "Non-Healthcare Business or Corporation" (exactly)
* name 1..1
* address ^short = "Funeral Home Name"
* address 1..1
* address ^short = "Funeral Home Address"
* address.state from StatesTerritoriesAndProvincesVS  (required)
* insert AddressComponents