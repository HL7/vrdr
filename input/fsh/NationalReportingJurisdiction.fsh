Profile: NationalReportingJurisdiction
Parent: USCoreLocation
Id: VRDR-National-Reporting-Jurisdiction
Title: "VRDR National Reporting Jurisdiction"
Description: "The national jurisdiction reporting a death event to the National Center for Health Statistics (NCHS). The identifier of the National Reporting Jurisdiction guide uses a numeric value for a reporting State, territory, or city based on the FIPS5_2 coding system. "
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-08-18T06:04:06.920+00:00"
* ^meta.source = "#kNSOkpxSogjCxdh1"
* identifier 1..1
* identifier.value 1..1
* identifier.value from $ViewValueSet.action_11 (required)
* identifier.value ^label = "National Reporting Jurisdiction"
* identifier.value ^short = "National Reporting Jurisdiction"
* identifier.value ^binding.description = "PHVS_NationalReportingJurisdiction_NND"
* name 1..1
* alias 1..1
* alias ^definition = "A two character code used as the second component of the NCHS death record identifier. It is translation of the National Reporting Jurisdiction identifier."
* alias ^comment = "The National Reporting Jurisdiction identifier value is bound to the [PHVS_NationalReportingJurisdiction_NND value set](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=409AF67D-DA64-DE11-9B52-0015173D1785). A translation of the identifier value is specified as an alias of the National Reporting Jurisdiction location. The mapping table for this translation is provided below. \n\n|Identifier|Name|Alias| \n|----------------------|----------------------------------------------|----------------------------------------| \n|01|Alabama|AL| \n|02|Alaska|AK| \n|60|American Samoa|AS| \n|04|Arizona|AZ| \n|05|Arkansas|AR| \n|06|California|CA| \n|08|Colorado|CO| \n|09|Connecticut|CT| \n|10|Delaware|DE| \n|11|District of Columbia|DC| \n|12|Florida|FL| \n|13|Georgia|GA| \n|66|Guam|GU| \n|15|Hawaii|HI| \n|16|Idaho|ID| \n|17|Illinois|IL| \n|18|Indiana|IN| \n|19|Iowa|IA| \n|20|Kansas|KS| \n|21|Kentucky|KY| \n|22|Louisiana|LA| \n|23|Maine|ME| \n|24|Maryland|MD| \n|25|Massachusetts|MA| \n|26|Michigan|MI| \n|27|Minnesota|MN| \n|28|Mississippi|MS| \n|29|Missouri|MO| \n|30|Montana|MT| \n|31|Nebraska|NE| \n|32|Nevada|NV| \n|33|New Hampshire|NH| \n|34|New Jersey|NJ| \n|35|New Mexico|NM| \n|975772|New York City|YC| \n|36|New York|NY| \n|37|North Carolina|NC| \n|38|North Dakota|ND| \n|69|Northern Mariana Islands|MP| \n|39|Ohio|OH| \n|40|Oklahoma|OK| \n|41|Oregon|OR| \n|42|Pennsylvania|PA| \n|72|Puerto Rico|PR| \n|44|Rhode Island|RI| \n|45|South Carolina|SC| \n|46|South Dakota|SD| \n|47|Tennessee|TN| \n|48|Texas|TX| \n|49|Utah|UT| \n|50|Vermont|VT| \n|78|Virgin Islands of the U.S.|VI| \n|51|Virginia|VA| \n|53|Washington|WA| \n|54|West Virginia|WV| \n|55|Wisconsin|WI| \n|56|Wyoming|WY| \n"
* type 1..1
* type = $loinc#77968-6 "National reporting jurisdiction" (exactly)

Instance: 361aaa44-9955-4cd4-8f55-9f7df3537e17
InstanceOf: NationalReportingJurisdiction
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-08-18T14:05:15.893+00:00"
* meta.source = "#Q8o9osICOCKRtBw9"
* identifier.value = "25"
* name = "Massachusetts"
* alias = "MA"
* type = $loinc#77968-6 "National reporting jurisdiction"