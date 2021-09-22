Extension: Within_City_Limits_Indicator
Id: Within-City-Limits-Indicator
Title: "VRDR Within City Limits Indicator"
Description: "Used to indicate whether or not an address is within city limits. The content of the component shall be a value from the value set Yes No Unknown.  "
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-28T05:25:44.083+00:00"
* ^meta.source = "#YSxzMcCyoWhr4StP"
* ^version = "1.0"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* ^purpose = "Inclusion within city limits is used in determining juridictional responsiblity."
* ^context.type = #element
* ^context.expression = "Address"
* value[x] 1..1
* value[x] only Coding
* value[x] from $ViewValueSet.action_2 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"

Extension: ExtensionPartialDatePartAbsentReason
Id: VRDR-Partial-date-part-absent-reason
Title: "Extension - Partial Date Part Absent Reason"
Description: "Provides values of a partial date along with the reason one or more expected date part is missing."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2021-08-09T06:48:49.451+00:00"
* ^meta.source = "#83d0qyyAShJvOTBk"
* ^version = "0.1.0"
* ^date = "2021-08-05"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . 0..*
* . ^short = "Partial Date"
* . ^definition = "Provides a partial date and the reason one or more expected date part is missing."
* extension contains
    DateYear named date-year 0..1 and
    DateAbsentReason named date-year-absent-reason 0..1 and
    DateMonth named date-month 0..1 and
    DateAbsentReason named date-month-absent-reason 0..1 and
    DateDay named date-day 0..1 and
    DateAbsentReason named date-day-absent-reason 0..1

Extension: DateYear
Id: Date-Year
Title: "Date Year"
Description: "The year portion (YYYY) of the partial date."
* value[x] 1..1
* value[x] only integer

Extension: DateMonth
Id: Date-Month
Title: "Date Month"
Description: "The month portion (MM) of the partial date."
* value[x] 1..1
* value[x] only integer

Extension: DateDay
Id: Date-Day
Title: "Date Day"
Description: "The ydayear portion (DD) of the partial date."

* value[x] 1..1
* value[x] only integer

Extension: DateAbsentReason
Id: Date-Absent-Reason
Title: "Date Absent Reason"
Description: "Date Component Absent Reason"
* value[x] 1..1
* value[x] only code
* value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)


Extension: InjuryLocationReference
Id: Injury-Location-Reference
Title: "Injury Location Reference"
* url 1..1
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Injury-Location-Reference" (exactly)
* value[x] 1..1
* value[x] only Reference
* value[x] only Reference(InjuryLocation)


Extension: DeathLocationReference
Id: Death-Location-Reference
Title: "Death Location Reference"
* url 1..1
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Death-Location-Reference" (exactly)
* value[x] 1..1
* value[x] only Reference
* value[x] only Reference(DeathLocation)

Extension: DispositionLocationReference
Id: Disposition-Location-Reference
Title: "Disposition Location Reference"
* url 1..1
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Disposition-Location-Reference" (exactly)
* value[x] 1..1
* value[x] only Reference
* value[x] only Reference(DispositionLocation)
