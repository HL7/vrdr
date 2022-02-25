

Instance: Decedent-Example1
InstanceOf: Decedent
Usage: #example
Description: "Decedent-Example1"
* meta.profile = Canonical(Decedent)
* extension[NVSS-Race].extension[White].value[x] = true
* extension[NVSS-Race].extension[BlackOrAfricanAmerican].value[x] = true
* extension[NVSS-Race].extension[AmericanIndianOrAlaskaNative].value[x] = true
* extension[NVSS-Race].extension[AsianIndian].value[x] = true
* extension[NVSS-Race].extension[Chinese].value[x] = true
* extension[NVSS-Race].extension[Filipino].value[x] = true
* extension[NVSS-Race].extension[Japanese].value[x] = true
* extension[NVSS-Race].extension[OtherAsian].value[x] = true
* extension[NVSS-Race].extension[NativeHawaiian].value[x] = true
* extension[NVSS-Race].extension[GuamanianOrChamorro].value[x] = true
* extension[NVSS-Race].extension[Samoan].value[x] = true
* extension[NVSS-Race].extension[OtherPacificIslander].value[x] = true
* extension[NVSS-Race].extension[OtherRace].value[x] = true
* extension[NVSS-Race].extension[AmericanIndianOrAlaskaNativeLiteral].value[x] = "X"
* extension[NVSS-Race].extension[OtherAsianLiteral].value[x] = "X"
* extension[NVSS-Race].extension[OtherPacificIslanderLiteral].value[x] = "X"
* extension[NVSS-Race].extension[OtherRaceLiteral].value[x] = "X"
* extension[NVSS-Race].extension[MissingValueReason].value[x] = #R
* extension[NVSS-Ethnicity].extension[HispanicMexican].value[x] = #Y
* extension[NVSS-Ethnicity].extension[HispanicPuertoRican].value[x] = #Y
* extension[NVSS-Ethnicity].extension[HispanicOther].value[x] = #Y
* extension[NVSS-Ethnicity].extension[HispanicCuban].value[x] = #Y
* extension[NVSS-Ethnicity].extension[HispanicLiteral].value[x] = "who knows"
* extension[Spouse-Alive].value[x] = #Y
* extension[NVSS-SexAtDeath].value[x] = #U
* extension[$patient-birthPlace].valueAddress.city = "Roanoke"
* extension[$patient-birthPlace].valueAddress.state = "VA"
* extension[$patient-birthPlace].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name.use = #official
* name.family = "Patel"
* name.given = "Madelyn"
* gender = #male
// * birthDate = "1978-03-12"
* birthDate.extension[partialDate].extension[day].valueInteger = 12
* birthDate.extension[partialDatePartAbsentReason].extension[date-day].valueInteger = 12
* birthDate.extension[partialDatePartAbsentReason].extension[date-month-absent-reason].value[x] = #NA
* birthDate.extension[partialDatePartAbsentReason].extension[date-year-absent-reason].value[x] = #NA
* address.extension[WithinCityLimitsIndicator].valueCoding = $v2-0136#Y "Yes"
* address.line = "5590 Lockwood Drive"
* address.city = "Danville"
* address.state = "VA"
* address.district = "Fairfax"
* address.city.extension[cityCode].value[x] = 01234
* address.district.extension[districtCode].value[x]  = 321
* address.country = "US"
* address.extension[stname].valueString = "Lockwood"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* maritalStatus.extension[bypassEditFlag].value[x] = #0
* contact.relationship.text = "Friend of family"
