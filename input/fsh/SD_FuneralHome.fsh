Profile: FuneralHome
Parent: USCoreOrganizationProfile
Id: vrdr-funeral-home
Title: "Funeral Home"
Description: "Funeral Home (USCoreOrganization)"
* insert RequireMetaProfile(FuneralHome)
* id 0..1
* type 1..1
* type = OrganizationTypeCS#funeralhome // "Funeral Home"
* name 1..1
* name ^short = "Funeral Home Name"
* address ^short = "Funeral Home Address"
* address.state from StatesTerritoriesAndProvincesVS  (required)
* address.city  ^short = "city"
* address.postalCode  ^short = "zip"
* insert AddressComponents