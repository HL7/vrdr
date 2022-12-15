Instance: Decedent-Example3
InstanceOf: Decedent
Usage: #example
Description: "Decedent-Example3 - Stripped down for Mortality Roster"
* insert AddMetaProfile(Decedent)
// * extension[Spouse-Alive].valueCodeableConcept = $v2-0136#Y
* extension[NVSS-SexAtDeath].valueCodeableConcept = $admingender#unknown "Unknown"
// * extension[$patient-birthPlace].valueAddress.city = "Brooklyn"
* extension[$patient-birthPlace].valueAddress.state = "NY"
* extension[$patient-birthPlace].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name[0].use = #official
* name[0].family = "Patel"
* name[0].given = "Madelyn"
* name[1].use = #maiden
* name[1].text = "Joyce McCain"
* name[1].family = "McCain"
* name[1].given = "Joyce"
* gender = #female   // required by USCore
// * birthDate = "1978-03-12"
//* birthDate.extension[partialDate].extension[day].valueInteger.extension[dataabsent].valueCode = $dataabsentreason401#NA
* birthDate.extension[partialDate].extension[day].valueUnsignedInt = 10
* birthDate.extension[partialDate].extension[month].valueUnsignedInt = 11
* birthDate.extension[partialDate].extension[year].valueUnsignedInt = 2004
// * address.extension[WithinCityLimitsIndicator].valueCoding = $v2-0136#Y "Yes"
//* address.line = "5590 E Lockwood Drive SW, #1"
//* address.city = "Queens"
* address.state = "NY"
//* address.district = "Kings"
//* address.city.extension[cityCode].valuePositiveInt = 01234
//* address.district.extension[districtCode].valuePositiveInt  = 321
//* address.country = "US"
//* address.extension[unitnumber].valueString = "#1"
//* address.extension[stnum].valueString = "5590"
//* address.extension[stname].valueString = "Lockwood"
//* address.extension[stdesig].valueString = "Drive"
//* address.extension[predir].valueString = "E"
//* address.extension[postdir].valueString = "SW"
//* maritalStatus = $v3-MaritalStatus#S "Never Married"
//* maritalStatus.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0 "Edit Passed"
//* contact.name.text = "Joe Smith"
//* contact.relationship.text = "Friend of family"


Instance: Decedent-Example2
InstanceOf: Decedent
Usage: #example
Description: "Decedent-Example2 - with birth jurisdiction"
* insert AddMetaProfile(Decedent)
* extension[Spouse-Alive].valueCodeableConcept = $v2-0136#Y
* extension[NVSS-SexAtDeath].valueCodeableConcept = $admingender#unknown "Unknown"
* extension[$patient-birthPlace].valueAddress.city = "Brooklyn"
* extension[$patient-birthPlace].valueAddress.state = "NY"
* extension[$patient-birthPlace].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name[0].use = #official
* name[0].family = "Patel"
* name[0].given = "Madelyn"
* name[1].use = #maiden
* name[1].text = "Joyce McCain"
* name[1].given = "Joyce"
* name[1].family = "McCain"
* gender = #female
// * birthDate = "1978-03-12"
//* birthDate.extension[partialDate].extension[day].valueInteger.extension[dataabsent].valueCode = $dataabsentreason401#NA
* birthDate.extension[partialDate].extension[day].valueUnsignedInt = 10
* birthDate.extension[partialDate].extension[month].valueUnsignedInt = 11
* birthDate.extension[partialDate].extension[year].valueUnsignedInt = 2004
* address.extension[WithinCityLimitsIndicator].valueCoding = $v2-0136#Y "Yes"
* address.line = "5590 E Lockwood Drive SW, #1"
* address.city = "Queens"
* address.state = "NY"
* address.district = "Kings"
* address.city.extension[cityCode].valuePositiveInt = 01234
* address.district.extension[districtCode].valuePositiveInt  = 321
* address.country = "US"
* address.extension[unitnumber].valueString = "#1"
* address.extension[stnum].valueString = "5590"
* address.extension[stname].valueString = "Lockwood"
* address.extension[stdesig].valueString = "Drive"
* address.extension[predir].valueString = "E"
* address.extension[postdir].valueString = "SW"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0 "Edit Passed"
* contact.name.text = "Joe Smith"
* contact.relationship.text = "Friend of family"
* contact.relationship.coding = $v2-0131#U

Instance: Decedent-Example1
InstanceOf: Decedent
Usage: #example
Description: "Decedent-Example1"
* insert AddMetaProfile(Decedent)
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
* birthDate.extension[partialDate].extension[day].valueUnsignedInt = 10
* birthDate.extension[partialDate].extension[month].valueUnsignedInt = 11
* birthDate.extension[partialDate].extension[year].valueUnsignedInt = 2004
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
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0 "Edit Passed"
* contact.name.text = "Joe Smith"
* contact.relationship.text = "Friend of family"
* contact.relationship.coding = $v2-0131#U