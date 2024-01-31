// RuleSet: CanadaProvinces
// * $provinces#AB	"Alberta"
// * $provinces#BC	"British Columbia"
// * $provinces#MB	"Manitoba"
// * $provinces#NB	"New Brunswick"
// * $provinces#NL	"Newfoundland and Labrador"
// * $provinces#NS	"Nova Scotia"
// * $provinces#NT	"Northwest Territories"
// * $provinces#NU	"Nunavut"
// * $provinces#ON	"Ontario"
// * $provinces#PE	"Prince Edward Island"
// * $provinces#QC	"Quebec"
// * $provinces#SK	"Saskatchewan"
// * $provinces#YT	"Yukon"

CodeSystem: CanadianProvincesCS
Id: vrdr-canadian-provinces-cs
Title: "Canadian Provinces"
Description: "Canadian Provinces"
* ^caseSensitive = true
* #AB	"Alberta" "Alberta"
* #BC	"British Columbia" "British Columbia"
* #MB	"Manitoba" "Manitoba"
* #NB	"New Brunswick" "New Brunswick"
* #NL	"Newfoundland and Labrador" "Newfoundland and Labrador"
* #NS	"Nova Scotia" "Nova Scotia"
* #NT	"Northwest Territories" "Northwest Territories"
* #NU	"Nunavut" "Nunavut"
* #ON	"Ontario" "Ontario"
* #PE	"Prince Edward Island" "Prince Edward Island"
* #QC	"Quebec" "Quebec"
* #SK	"Saskatchewan" "Saskatchewan"
* #YT	"Yukon" "Yukon"
* ^experimental = false

RuleSet: USStatesAndTerritories
* $statesCS#AL  "Alabama"
* $statesCS#AK  "Alaska"
* $statesCS#AS  "American Samoa"
* $statesCS#AZ  "Arizona"
* $statesCS#AR  "Arkansas"
* $statesCS#CA  "California"
* $statesCS#CO  "Colorado"
* $statesCS#CT  "Connecticut"
* $statesCS#DE  "Delaware"
* $statesCS#DC  "District of Columbia"
* $statesCS#FL  "Florida"
* $statesCS#GA  "Georgia"
* $statesCS#GU  "Guam"
* $statesCS#HI  "Hawaii"
* $statesCS#ID  "Idaho"
* $statesCS#IL  "Illinois"
* $statesCS#IN  "Indiana"
* $statesCS#IA  "Iowa"
* $statesCS#KS  "Kansas"
* $statesCS#KY  "Kentucky"
* $statesCS#LA  "Louisiana"
* $statesCS#ME  "Maine"
* $statesCS#MD  "Maryland"
* $statesCS#MA  "Massachusetts"
* $statesCS#MI  "Michigan"
* $statesCS#MN  "Minnesota"
* $statesCS#MS  "Mississippi"
* $statesCS#MO  "Missouri"
* $statesCS#MT  "Montana"
* $statesCS#NE  "Nebraska"
* $statesCS#NV  "Nevada"
* $statesCS#NH  "New Hampshire"
* $statesCS#NJ  "New Jersey"
* $statesCS#NM  "New Mexico"
* $statesCS#NY  "New York"
* $statesCS#NC  "North Carolina"
* $statesCS#ND  "North Dakota"
* $statesCS#MP  "Northern Mariana Islands"
* $statesCS#OH  "Ohio"
* $statesCS#OK  "Oklahoma"
* $statesCS#OR  "Oregon"
* $statesCS#PA  "Pennsylvania"
* $statesCS#PR  "Puerto Rico"
* $statesCS#RI  "Rhode Island"
* $statesCS#SC  "South Carolina"
* $statesCS#SD  "South Dakota"
* $statesCS#TN  "Tennessee"
* $statesCS#TX  "Texas"
* $statesCS#UT  "Utah"
* $statesCS#VT  "Vermont"
* $statesCS#VI  "Virgin Islands"
* $statesCS#VA  "Virginia"
* $statesCS#WA  "Washington"
* $statesCS#WV  "West Virginia"
* $statesCS#WI  "Wisconsin"
* $statesCS#WY  "Wyoming"


ValueSet: USStatesAndTerritoriesVS
Id: vrdr-usstates-territories-vs
Title: "US States, Territories Value Set"
Description: "2 Letter States and Territories Value Set"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
//* insert USStatesAndTerritories
// * include codes from system $statesCS
* include codes from valueset http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA
// * $statesCS#AL  "Alabama"
// * $statesCS#AK  "Alaska"
// * $statesCS#AS  "American Samoa"
// * $statesCS#AZ  "Arizona"
// * $statesCS#AR  "Arkansas"
// * $statesCS#CA  "California"
// * $statesCS#CO  "Colorado"
// * $statesCS#CT  "Connecticut"
// * $statesCS#DE  "Delaware"
// * $statesCS#DC  "District of Columbia"
// * $statesCS#FL  "Florida"
// * $statesCS#GA  "Georgia"
// * $statesCS#GU  "Guam"
// * $statesCS#HI  "Hawaii"
// * $statesCS#ID  "Idaho"
// * $statesCS#IL  "Illinois"
// * $statesCS#IN  "Indiana"
// * $statesCS#IA  "Iowa"
// * $statesCS#KS  "Kansas"
// * $statesCS#KY  "Kentucky"
// * $statesCS#LA  "Louisiana"
// * $statesCS#ME  "Maine"
// * $statesCS#MD  "Maryland"
// * $statesCS#MA  "Massachusetts"
// * $statesCS#MI  "Michigan"
// * $statesCS#MN  "Minnesota"
// * $statesCS#MS  "Mississippi"
// * $statesCS#MO  "Missouri"
// * $statesCS#MT  "Montana"
// * $statesCS#NE  "Nebraska"
// * $statesCS#NV  "Nevada"
// * $statesCS#NH  "New Hampshire"
// * $statesCS#NJ  "New Jersey"
// * $statesCS#NM  "New Mexico"
// * $statesCS#NY  "New York"
// * $statesCS#NC  "North Carolina"
// * $statesCS#ND  "North Dakota"
// * $statesCS#MP  "Northern Mariana Islands"
// * $statesCS#OH  "Ohio"
// * $statesCS#OK  "Oklahoma"
// * $statesCS#OR  "Oregon"
// * $statesCS#PA  "Pennsylvania"
// * $statesCS#PR  "Puerto Rico"
// * $statesCS#RI  "Rhode Island"
// * $statesCS#SC  "South Carolina"
// * $statesCS#SD  "South Dakota"
// * $statesCS#TN  "Tennessee"
// * $statesCS#TX  "Texas"
// * $statesCS#UT  "Utah"
// * $statesCS#VT  "Vermont"
// * $statesCS#VI  "Virgin Islands"
// * $statesCS#VA  "Virginia"
// * $statesCS#WA  "Washington"
// * $statesCS#WV  "West Virginia"
// * $statesCS#WI  "Wisconsin"
// * $statesCS#WY  "Wyoming"

ValueSet: StatesTerritoriesAndProvincesVS
Id: vrdr-states-territories-provinces-vs
Title: "States, Territories and Provinces Value Set"
Description: "2 Letter States and Provinces Value Set"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
* ^status = #active
* ^experimental = false
//* insert USStatesAndTerritories
// * insert CanadaProvinces -- this doesn't work, don't be tempted
* codes from valueset USStatesAndTerritoriesVS
* codes from system CanadianProvincesCS
* $v3-NullFlavor#UNK

ValueSet: JurisdictionsProvincesVS
Id: vrdr-jurisdictions-provinces-vs
Title: "Jurisdictions and Provinces Value Set"
Description: "2 Letter Jurisdictions and Provinces Value Set"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
* ^status = #active
* ^experimental = false
// * insert USStatesAndTerritories
// * insert CanadaProvinces
* codes from valueset USStatesAndTerritoriesVS
* codes from system CanadianProvincesCS
* JurisdictionsCS#YC "New York City"
* $v3-NullFlavor#UNK


ValueSet: CanadaProvincesVS
Id: vrdr-canada-provinces-vs
Title: "Canadian Provinces Value Set"
Description: "2 Letter Canadian Provinces Value Set"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
// * insert CanadaProvinces
* codes from system CanadianProvincesCS
* ^experimental = false

ValueSet: JurisdictionVS
Id: vrdr-jurisdiction-vs
Title: "Jurisdictions Value Set"
Description: "2 Letter Codes for all 57 Jurisdictions Reporting Deaths to NCHS"
* codes from valueset USStatesAndTerritoriesVS
* JurisdictionsCS#YC "New York City"
* ^experimental = false