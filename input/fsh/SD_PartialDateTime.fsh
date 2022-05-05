

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
* value[x] only unsignedInt
* valueUnsignedInt ^minValueInteger = 0
* valueUnsignedInt ^maxValueInteger = 9998
* valueUnsignedInt.extension contains
   $DataAbsentReason named dataabsent 0..1

Extension: DateMonth
Id: Date-Month
Title: "Date Month"
Description: "The month portion (MM) of the partial date. (Extension)"
* value[x] 1..1
* value[x] only unsignedInt
* valueUnsignedInt ^minValueInteger = 1
* valueUnsignedInt ^maxValueInteger = 12
* valueUnsignedInt.extension contains
   $DataAbsentReason named dataabsent 0..1

Extension: DateDay
Id: Date-Day
Title: "Date Day"
Description: "The day portion (DD) of the partial date. (Extension)"
* value[x] 1..1
* value[x] only unsignedInt
* value[x] ^definition = "Specifies the day portion of a partial date."
* valueUnsignedInt ^minValueInteger = 1
* valueUnsignedInt ^maxValueInteger = 31
* valueUnsignedInt.extension contains
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
