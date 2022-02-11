Extension: WithinCityLimitsIndicator
Id: vrdr-within-city-limits-indicator
Title: "Within City Limits Indicator"
Description: "Used to indicate whether or not an address is within city limits. The content of the component shall be a value from the value set Yes No Unknown.  "
* insert boilerplate
* ^purpose = "Inclusion within city limits is used in determining juridictional responsiblity."
* ^context.type = #element
* ^context.expression = "Address"
* value[x] 1..1
* value[x] only Coding
* value[x] from $Yes-No-Unknown (required)
* value[x] ^binding.description = "Yes No Unknown"
