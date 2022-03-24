// Extension: PartialDatePartAbsentReason
// Id: vrdr-partial-date-part-absent-reason
// Title: "Extension - Partial Date Part Absent Reason"
// Description: "This extension enables an incomplete date to be expressed with reasons provided for missing date components."
// * insert boilerplate
// * ^context[0].type = #element
// * ^context[=].expression = "date"
// * ^context[+].type = #element
// * ^context[=].expression = "dateTime"
// * . 0..*
// * . ^short = "Partial Date"
// * . ^definition = "Provides a partial date and the reason one or more expected date part is missing."
// * extension contains
//     date-year 0..1 and
//     date-year-absent-reason 0..1 and
//     date-month 0..1 and
//     date-month-absent-reason 0..1 and
//     date-day 0..1 and
//     date-day-absent-reason 0..1
// * extension[date-year] only Extension
// * extension[date-year] ^short = "Date Year"
// * extension[date-year] ^definition = "The year portion (YYYY) of the partial date."
// //* extension[date-year].url only uri
// * extension[date-year].value[x] 1..
// * extension[date-year].value[x] only integer
// * extension[date-year].value[x] ^definition = "Specifies the year portion of a partial date"
// * extension[date-year].value[x] ^maxLength = 4
// * extension[date-year-absent-reason] only Extension
// * extension[date-year-absent-reason] ^short = "Date year absent reason"
// * extension[date-year-absent-reason] ^definition = "The reason the year portion of a partial date is missing."
// //* extension[date-year-absent-reason].url only uri
// //* extension[date-year-absent-reason].url = "year-absent-reason" (exactly)
// * extension[date-year-absent-reason].value[x] 1..
// * extension[date-year-absent-reason].value[x] only code
// * extension[date-year-absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
// * extension[date-year-absent-reason].value[x] ^label = "Used to specify why the year portion of a partial date is missing."
// * extension[date-year-absent-reason].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * extension[date-year-absent-reason].value[x] ^binding.extension.valueString = "DataAbsentReason"
// * extension[date-year-absent-reason].value[x] ^binding.description = "data-absent-reason"
// * extension[date-month] only Extension
// * extension[date-month] ^short = "Date Month"
// * extension[date-month] ^definition = "The month portion (MM) of the partial date."
// //* extension[date-month].url only uri
// * extension[date-month].value[x] 1..
// * extension[date-month].value[x] only integer
// * extension[date-month].value[x] ^definition = "Specifies the month portion of a partial date"
// * extension[date-month].value[x] ^minValueInteger = 1
// * extension[date-month].value[x] ^maxValueInteger = 12
// * extension[date-month].value[x] ^maxLength = 2
// * extension[date-month-absent-reason] only Extension
// * extension[date-month-absent-reason] ^short = "Date month absent reason"
// * extension[date-month-absent-reason] ^definition = "The reason the month portion of a partial date is missing."
// //* extension[date-month-absent-reason].url only uri
// //* extension[date-month-absent-reason].url = "month-absent-reason" (exactly)
// * extension[date-month-absent-reason].value[x] 1..
// * extension[date-month-absent-reason].value[x] only code
// * extension[date-month-absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
// * extension[date-month-absent-reason].value[x] ^label = "Used to specify why the month portion of a partial date is missing."
// * extension[date-month-absent-reason].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * extension[date-month-absent-reason].value[x] ^binding.extension.valueString = "DataAbsentReason"
// * extension[date-month-absent-reason].value[x] ^binding.description = "data-absent-reason"
// * extension[date-day] only Extension
// * extension[date-day] ^short = "Date Day"
// * extension[date-day] ^definition = "The day portion (DD) of the partial date."
// //* extension[date-day].url only uri
// * extension[date-day].value[x] 1..
// * extension[date-day].value[x] only integer
// * extension[date-day].value[x] ^definition = "Specifies the day portion of a partial date."
// * extension[date-day].value[x] ^minValueInteger = 1
// * extension[date-day].value[x] ^maxValueInteger = 31
// * extension[date-day].value[x] ^maxLength = 2
// * extension[date-day-absent-reason] only Extension
// * extension[date-day-absent-reason] ^short = "Date day absent reason"
// * extension[date-day-absent-reason] ^definition = "The reason the day portion of a partial date is missing."
// //* extension[date-day-absent-reason].url only uri
// //* extension[date-day-absent-reason].url = "day-absent-reason" (exactly)
// * extension[date-day-absent-reason].value[x] 1..
// * extension[date-day-absent-reason].value[x] only code
// * extension[date-day-absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
// * extension[date-day-absent-reason].value[x] ^label = "Used to specify why the day portion of a partial date is missing."
// * extension[date-day-absent-reason].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * extension[date-day-absent-reason].value[x] ^binding.extension.valueString = "DataAbsentReason"
// * extension[date-day-absent-reason].value[x] ^binding.description = "data-absent-reason"


Extension: PartialDate
Id: PartialDate
Title: "Partial Date"
Description: "Provides values of a partial date (Extension)"
* insert boilerplate
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . ^short = "Partial Date"
* . ^definition = "Provides a partial date."
* extension contains
    DateYear named year 1..1 and
    DateMonth named month 1..1 and
    DateDay named day 1..1
* extension[day] ^short = "Date Day"
* extension[day] ^definition = "The day portion (DD) of the partial date."
* extension[year] ^short = "Date Year"
* extension[year] ^definition = "The year portion (YYYY) of the partial date."
* extension[month] ^short = "Date Month"
* extension[month] ^definition = "The day portion (MM) of the partial date."

Extension: PartialDateTime
Id: PartialDateTime
Title: "Partial Date Time"
Description: "Provides values of a partial dateTime (Extension)"
* insert boilerplate
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . ^short = "Partial Date Time"
* . ^definition = "Provides a partial date time."
* extension contains
    DateYear named year 1..1 and
    DateMonth named month 1..1 and
    DateDay named day 1..1 and
    DateTime named time 1..1
* extension[day] ^short = "Date Day"
* extension[day] ^definition = "The day portion (DD) of the partial date."
* extension[year] ^short = "Date Year"
* extension[year] ^definition = "The year portion (YYYY) of the partial date."
* extension[month] ^short = "Date Month"
* extension[month] ^definition = "The day portion (MM) of the partial date."
* extension[time] ^short = "Date Time"
* extension[time] ^definition = "The time portion  of the partial datetime."

Extension: DateYear
Id: Date-Year
Title: "Date Year"
Description: "The year portion (YYYY) of the partial date. (Extension)"
* value[x] 1..1
* value[x] only integer
* valueInteger ^minValueInteger = 0
* valueInteger ^maxValueInteger = 9998
* valueInteger.extension contains
   $DataAbsentReason named dataabsent 0..1

Extension: DateMonth
Id: Date-Month
Title: "Date Month"
Description: "The month portion (MM) of the partial date. (Extension)"
* value[x] 1..1
* value[x] only integer
* valueInteger ^minValueInteger = 1
* valueInteger ^maxValueInteger = 12
* valueInteger.extension contains
   $DataAbsentReason named dataabsent 0..1

Extension: DateDay
Id: Date-Day
Title: "Date Day"
Description: "The day portion (DD) of the partial date. (Extension)"
* value[x] 1..1
* value[x] only integer
* value[x] ^definition = "Specifies the day portion of a partial date."
* valueInteger ^minValueInteger = 1
* valueInteger ^maxValueInteger = 31
* valueInteger.extension contains
   $DataAbsentReason named dataabsent 0..1

Extension: DateTime
Id: Date-Time
Title: "Date Time"
Description: "The time portion (DD) of the partial date. (Extension)"
* value[x] 1..1
// * value[x] only time or code
* value[x] only time
* value[x] ^definition = "Specifies the time portion of a partial date."
//* valueCode from NotApplicableVS (required)
* valueTime.extension contains
   $DataAbsentReason named dataabsent 0..1
