Instance: InjuryIncident-Example1
InstanceOf: InjuryIncident
Usage: #example
Description: "InjuryIncident-Example1 (with literal transportationRole)"
* insert AddMetaProfile(InjuryIncident)
//* extension[injuryLocationReference].valueReference = Reference(InjuryLocation-Example1)
* status = #final
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text  = "drug toxicity"
* component[workInjuryIndicator].valueCodeableConcept = $v2-0136#N "No"
* component[placeOfInjury].valueCodeableConcept.text = "Home"
* component[transportationRole].valueCodeableConcept = $v3-NullFlavor#OTH "Other"
* component[transportationRole].valueCodeableConcept.text = "Hoverboard Rider"

Instance: InjuryIncident-Example2
InstanceOf: InjuryIncident
Usage: #example
Description: "InjuryIncident-Example2 (with coded transportationRole)"
* insert AddMetaProfile(InjuryIncident)
//* extension[injuryLocationReference].valueReference = Reference(InjuryLocation-Example1)
* status = #final
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text  = "drug toxicity"
* component[workInjuryIndicator].valueCodeableConcept = $v2-0136#N "No"
* component[placeOfInjury].valueCodeableConcept.text = "Home"
* component[transportationRole].valueCodeableConcept = $sct#257518000 "Pedestrian"

Instance: InjuryLocation-Example1
InstanceOf: InjuryLocation
Usage: #example
Description: "InjuryLocation-Example1"
* insert AddMetaProfile(InjuryLocation)
* description = "5590 Lockwood Drive 20621 US"
* name = "Home"
* address.text = "5590 Lockwood Drive 20621 US"

Instance: InjuryIncident-Example3
InstanceOf: InjuryIncident
Description: "NewParitalDateTime - example 1. Year, Day and TIme are known. Month is unknown."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident"
* status = #final
* code = http://loinc.org#11374-6 "Injury incident description Narrative"
* subject = Reference(urn:uuid:9c367ae3-1de1-4f7a-bc68-bea13cd0ae3d)
* effectiveDateTime = "2022"
* effectiveDateTime.extension[partialDateTime]
  * extension[time].valueTime = "10:15:00"
  * extension[year].valueUnsignedInt = 2022
  * extension[day].valueUnsignedInt = 16

* valueCodeableConcept.text = "UNRESTRAINED EJECTED DRIVER IN ROLLOVER MOTOR VEHICLE ACCIDENT"
* component[0].code = http://loinc.org#69451-3 "Transportation role of decedent"
* component[=].valueCodeableConcept = http://snomed.info/sct#236320001 "Vehicle driver"
* component[+].code = http://loinc.org#69444-8 "Did death result from injury at work"
* component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* component[+].code = http://loinc.org#69450-5 "Place of injury Facility"
* component[=].valueCodeableConcept.text = "STREET"

Instance: InjuryIncident-Example4
InstanceOf: InjuryIncident
Description: "NewParitalDateTime - example 2. Only time is known. Year, Month, Day are unknown."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident"
* status = #final
* code = http://loinc.org#11374-6 "Injury incident description Narrative"
* subject = Reference(urn:uuid:9c367ae3-1de1-4f7a-bc68-bea13cd0ae3d)
* effectiveDateTime.extension[partialDateTime]
  * extension[time].valueTime = "10:15:00"
* valueCodeableConcept.text = "UNRESTRAINED EJECTED DRIVER IN ROLLOVER MOTOR VEHICLE ACCIDENT"
* component[0].code = http://loinc.org#69451-3 "Transportation role of decedent"
* component[=].valueCodeableConcept = http://snomed.info/sct#236320001 "Vehicle driver"
* component[+].code = http://loinc.org#69444-8 "Did death result from injury at work"
* component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* component[+].code = http://loinc.org#69450-5 "Place of injury Facility"
* component[=].valueCodeableConcept.text = "STREET"

Instance: InjuryIncident-Example5
InstanceOf: InjuryIncident
Description: "NewParitalDateTime - example 3.  Year, Month and Time are known.  Day is unknown."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident"
* status = #final
* code = http://loinc.org#11374-6 "Injury incident description Narrative"
* subject = Reference(urn:uuid:9c367ae3-1de1-4f7a-bc68-bea13cd0ae3d)
* effectiveDateTime = "2022-04"
* effectiveDateTime.extension[partialDateTime]
  * extension[time].valueTime = "10:15:00"
  * extension[year].valueUnsignedInt = 2022
  * extension[month].valueUnsignedInt = 4

* valueCodeableConcept.text = "UNRESTRAINED EJECTED DRIVER IN ROLLOVER MOTOR VEHICLE ACCIDENT"
* component[0].code = http://loinc.org#69451-3 "Transportation role of decedent"
* component[=].valueCodeableConcept = http://snomed.info/sct#236320001 "Vehicle driver"
* component[+].code = http://loinc.org#69444-8 "Did death result from injury at work"
* component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* component[+].code = http://loinc.org#69450-5 "Place of injury Facility"
* component[=].valueCodeableConcept.text = "STREET"