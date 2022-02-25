Extension: WithinCityLimitsIndicator
Id: WithinCityLimitsIndicator
Title: "Within City Limits Indicator"
Description: "Within City Limits Indicator (Extension)"
* insert boilerplate
* ^purpose = "Inclusion within city limits is used in determining juridictional responsiblity."
* ^context.type = #element
* ^context.expression = "Address"
* value[x] 1..1
* value[x] only Coding
* value[x] from $Yes-No-Unknown (required)
* value[x] ^binding.description = "Yes No Unknown"
