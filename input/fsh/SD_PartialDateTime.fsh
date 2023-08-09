RuleSet: YearMonthDay
* extension[year] 
  * ^short = "Date year (0-9998)"
  * ^definition = "The year portion (YYYY) of the partial date (0-9998)."
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = 0
  * valueUnsignedInt ^maxValueInteger = 9998
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1
* extension[month] 
  * ^short = "Date month (1-12)"
  * ^definition = "The month portion (MM) of the partial date (1-12)."
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = 1
  * valueUnsignedInt ^maxValueInteger = 12
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1
* extension[day] 
  * ^short = "Date day (1-31)"
  * ^definition = "The day portion (DD) of the partial date (1-31)."
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = 1
  * valueUnsignedInt ^maxValueInteger = 31
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1

RuleSet: UnsignedIntInlineExtension(id, short, description, min, max)
* extension[{id}].
  * ^short = {short}
  * ^definition = {description}
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = {min}
  * valueUnsignedInt ^maxValueInteger = {max}
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1
     
Extension: NewPartialDate
Id: NewPartialDate
Title: "Partial Date"
Description: "Provides values of a partial date (Extension).
If a component is missing, it is assumed unknown.
* This extension SHOULD NOT be used when the value can be expressed as a [date](https://build.fhir.org/datatypes.html#date), specifically YYYY, YYYY-MM or YYYY-MM-DD).
* This extension SHOULD NOT be used to express that the date in its entirety is missing/unknown.  In this case a simple dataAbsent reason extension should be used on the date field.
* This extension SHOULD be used to express missing components of date including XXXX-XX-DD, YYYY-XX-DD, YYYY-MM-XX.
* If a component is missing, the interpretation should be equivalent to it being present, with a data absent reason of 'unknown'. If the data absent reason is other than 'unknown', the component may be included wih a data absent reason.
When the known components of the date can be expressed as a valid date, the value SHALL be present.  So, for example 2022-XX-12, the date value should be \"2022\"."
* insert boilerplate
* insert ExtensionContextResource(date)
* . ^short = "Partial Date"
* . ^definition = "Provides a partial date."
* extension contains
    year 0..1 and
    month 0..1 and
    day 0..1 
* insert YearMonthDay



Extension: NewPartialDateTime
Id: NewPartialDateTime
Title: "Partial Date Time"
Description: "Provides values of a partial dateTime (Extension).

If a component is missing, it is assumed unknown.
* This extension SHOULD NOT be used when the value can be expressed as a [dateTime](https://build.fhir.org/datatypes.html#dateTime), specifically YYYY, YYYY-MM, YYYY-MM-DD, or a full dateTime).
* This extension SHOULD NOT be used to express that the dateTime in its entirety is missing/unknown.  In this case a simple dataAbsent reason extension should be used on the dateTime.
* This extension SHOULD be used to express missing components of dateTime including XXXX-XX-DD, YYYY-XX-DD, YYYY-MM-XX, as well as all cases where the time is known, but one or more components of the date is unknown.
* If a component is missing, the interpretation should be equivalent to it being present, with a data absent reason of 'unknown'.  If the data absent reason is other than 'unknown', the component may be included wih a data absent reason.

When the known components of the date can be expressed as a valid dateTime, the value SHALL be present.  So, for example 2022-12-XX-1201212, the dateTime value should be \"2022-12\"."
* insert boilerplate
* insert ExtensionContextResource(dateTime)
* . ^short = "Partial Date Time"
* . ^definition = "Provides a partial date time."
* extension contains
    year 0..1 and
    month 0..1 and
    day 0..1 and
    time 0..1
* insert YearMonthDay
* extension[time] 
  * ^short = "Date Time"
  * ^definition = "The time portion of the partial date."
  * value[x] 1..1
  * value[x] only time
  * valueTime.extension contains
     $DataAbsentReason named dataabsent 0..1


Extension: PartialDate
Id: PartialDate
Title: "Partial Date"
Description: "Provides values of a partial date (Extension)"
* insert boilerplate
* insert ExtensionContextResource(date)
* insert ExtensionContextResource(dateTime)
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
* insert ExtensionContextResource(date)
* insert ExtensionContextResource(dateTime)
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
* insert ExtensionContextResource(Extension)
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
* insert ExtensionContextResource(Extension)
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
* insert ExtensionContextResource(Extension)
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
* insert ExtensionContextResource(Extension)
* value[x] 1..1
// * value[x] only time or code
* value[x] only time
* value[x] ^definition = "Specifies the time portion of a partial date."
//* valueCode from NotApplicableVS (required)
* valueTime.extension contains
   $DataAbsentReason named dataabsent 0..1
