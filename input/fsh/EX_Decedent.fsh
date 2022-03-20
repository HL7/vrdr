Instance: Decedent-Example2
InstanceOf: Decedent
Usage: #example
Description: "Decedent-Example2 - with birth jurisdiction"
* insert AddMetaProfile(Decedent)
* extension[NVSS-Race].extension[White].valueBoolean = true
* extension[NVSS-Race].extension[BlackOrAfricanAmerican].valueBoolean = true
* extension[NVSS-Race].extension[AmericanIndianOrAlaskaNative].valueBoolean = true
* extension[NVSS-Race].extension[AsianIndian].valueBoolean = true
* extension[NVSS-Race].extension[Chinese].valueBoolean = true
* extension[NVSS-Race].extension[Filipino].valueBoolean = true
* extension[NVSS-Race].extension[Japanese].valueBoolean = true
* extension[NVSS-Race].extension[OtherAsian].valueBoolean = true
* extension[NVSS-Race].extension[NativeHawaiian].valueBoolean = true
* extension[NVSS-Race].extension[GuamanianOrChamorro].valueBoolean = true
* extension[NVSS-Race].extension[Samoan].valueBoolean = true
* extension[NVSS-Race].extension[OtherPacificIslander].valueBoolean = true
* extension[NVSS-Race].extension[OtherRace].valueBoolean = true
* extension[NVSS-Race].extension[AmericanIndianOrAlaskaNativeLiteral].valueString = "X"
* extension[NVSS-Race].extension[OtherAsianLiteral].valueString = "X"
* extension[NVSS-Race].extension[OtherPacificIslanderLiteral].valueString = "X"
* extension[NVSS-Race].extension[OtherRaceLiteral].valueString = "X"
* extension[NVSS-Race].extension[MissingValueReason].valueCoding = MissingValueReasonCS#R
* extension[NVSS-Ethnicity].extension[HispanicMexican].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicPuertoRican].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicOther].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicCuban].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicLiteral].valueString = "who knows"
* extension[Spouse-Alive].valueCodeableConcept = $v2-0136#Y
* extension[NVSS-SexAtDeath].valueCodeableConcept = $admingender#unknown "Unknown"
* extension[$patient-birthPlace].valueAddress.city = "Brooklyn"
* extension[$patient-birthPlace].valueAddress.state = "NY"
* extension[$patient-birthPlace].valueAddress.state.extension[nationalReportingJurisdictionId].valueString = "YC"
* extension[$patient-birthPlace].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name.use = #official
* name.family = "Patel"
* name.given = "Madelyn"
* gender = #female
// * birthDate = "1978-03-12"
//* birthDate.extension[partialDate].extension[day].valueInteger.extension[dataabsent].valueCode = $dataabsentreason401#NA
* birthDate.extension[partialDate].extension[day].valueInteger = 10
* birthDate.extension[partialDate].extension[month].valueInteger = 11
* birthDate.extension[partialDate].extension[year].valueInteger = 2004
* address.extension[WithinCityLimitsIndicator].valueCoding = $v2-0136#Y "Yes"
* address.line = "5590 Lockwood Drive"
* address.city = "Queens"
* address.state = "NY"
* address.district = "Kings"
* address.city.extension[cityCode].valuePositiveInt = 01234
* address.district.extension[districtCode].valuePositiveInt  = 321
* address.country = "US"
* address.extension[stname].valueString = "Lockwood"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0
* contact.name.text = "Joe Smith"
* contact.relationship.text = "Friend of family"

Instance: Decedent-Example1
InstanceOf: Decedent
Usage: #example
Description: "Decedent-Example1"
* insert AddMetaProfile(Decedent)
* extension[NVSS-Race].extension[White].valueBoolean = true
* extension[NVSS-Race].extension[BlackOrAfricanAmerican].valueBoolean = true
* extension[NVSS-Race].extension[AmericanIndianOrAlaskaNative].valueBoolean = true
* extension[NVSS-Race].extension[AsianIndian].valueBoolean = true
* extension[NVSS-Race].extension[Chinese].valueBoolean = true
* extension[NVSS-Race].extension[Filipino].valueBoolean = true
* extension[NVSS-Race].extension[Japanese].valueBoolean = true
* extension[NVSS-Race].extension[OtherAsian].valueBoolean = true
* extension[NVSS-Race].extension[NativeHawaiian].valueBoolean = true
* extension[NVSS-Race].extension[GuamanianOrChamorro].valueBoolean = true
* extension[NVSS-Race].extension[Samoan].valueBoolean = true
* extension[NVSS-Race].extension[OtherPacificIslander].valueBoolean = true
* extension[NVSS-Race].extension[OtherRace].valueBoolean = true
* extension[NVSS-Race].extension[AmericanIndianOrAlaskaNativeLiteral].valueString = "X"
* extension[NVSS-Race].extension[OtherAsianLiteral].valueString = "X"
* extension[NVSS-Race].extension[OtherPacificIslanderLiteral].valueString = "X"
* extension[NVSS-Race].extension[OtherRaceLiteral].valueString = "X"
* extension[NVSS-Race].extension[MissingValueReason].valueCoding = MissingValueReasonCS#R
* extension[NVSS-Ethnicity].extension[HispanicMexican].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicPuertoRican].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicOther].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicCuban].valueCoding = $v2-0136#Y
* extension[NVSS-Ethnicity].extension[HispanicLiteral].valueString = "who knows"
* extension[Spouse-Alive].valueCodeableConcept = $v2-0136#Y
* extension[NVSS-SexAtDeath].valueCodeableConcept = $admingender#unknown "Unknown"
* extension[$patient-birthPlace].valueAddress.city = "Roanoke"
* extension[$patient-birthPlace].valueAddress.state = "VA"
* extension[$patient-birthPlace].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name.use = #official
* name.family = "Patel"
* name.given = "Madelyn"
* gender = #female
// * birthDate = "1978-03-12"
//* birthDate.extension[partialDate].extension[day].valueInteger.extension[dataabsent].valueCode = $dataabsentreason401#NA
* birthDate.extension[partialDate].extension[day].valueInteger = 10
* birthDate.extension[partialDate].extension[month].valueInteger = 11
* birthDate.extension[partialDate].extension[year].valueInteger = 2004
* address.extension[WithinCityLimitsIndicator].valueCoding = $v2-0136#Y "Yes"
* address.line = "5590 Lockwood Drive"
* address.city = "Danville"
* address.state = "VA"
* address.district = "Fairfax"
* address.city.extension[cityCode].valuePositiveInt = 01234
* address.district.extension[districtCode].valuePositiveInt  = 321
* address.country = "US"
* address.extension[stname].valueString = "Lockwood"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0
* contact.name.text = "Joe Smith"
* contact.relationship.text = "Friend of family"