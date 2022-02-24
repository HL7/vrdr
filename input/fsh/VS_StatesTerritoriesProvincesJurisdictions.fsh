RuleSet: CanadaProvinces
* $provinces#AB	"Alberta"
* $provinces#BC	"British Columbia"
* $provinces#MB	"Manitoba"
* $provinces#NB	"New Brunswick"
* $provinces#NL	"Newfoundland and Labrador"
* $provinces#NS	"Nova Scotia"
* $provinces#NT	"Northwest Territories"
* $provinces#NU	"Nunavut"
* $provinces#ON	"Ontario"
* $provinces#PE	"Prince Edward Island"
* $provinces#QC	"Quebec"
* $provinces#SK	"Saskatchewan"
* $provinces#YT	"Yukon"

RuleSet: USStatesAndTerritories
* include codes from system $statesCS
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA

ValueSet: USStatesAndTerritoriesVS
Id: vrdr-usstates-territories-vs
Title: "US States, Territories Value Set"
Description: "2 Letter States and Territories Value Set"
* ^status = #active
* ^version = "1.0.0"
* insert USStatesAndTerritories

ValueSet: StatesTerritoriesAndProvincesVS
Id: vrdr-states-territories-provinces-vs
Title: "States, Territories and Provinces Value Set"
Description: "2 Letter States and Provinces Value Set"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
* ^status = #active
* ^version = "1.0.0"
* insert USStatesAndTerritories
* insert CanadaProvinces
* $v3-NullFlavor#UNK

ValueSet: CanadaProvincesVS
Id: vrdr-canada-provinces-vs
Title: "Canadian Provinces Value Set"
Description: "2 Letter Candadian Provinces Value Set"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
* insert CanadaProvinces

ValueSet: JurisdictionVS
Id: vrdr-jurisdiction-vs
Title: "Jurisdictions Value Set"
Description: "2 Letter Codes for all 57 Jurisdictions Reporting Deaths to NCHS"
* include codes from valueset USStatesAndTerritoriesVS
* JurisdictionsCS#YC "New York City"