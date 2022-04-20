Instance: DecedentDispositionMethod-Example1
InstanceOf: DecedentDispositionMethod
Usage: #example
Description: "DecedentDispositionMethod-Example1"
* insert AddMetaProfile(DecedentDispositionMethod)
* status = #final
* subject = Reference(Decedent-Example1)
* performer = Reference(Mortician-Example1)
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried"
//* extension[dispositionLocationReference].valueReference  = Reference(DispositionLocation-Example1)

/*  Mortician */
Instance: Mortician-Example1
InstanceOf: USCorePractitionerProfile
Usage: #example
Description: "Mortician-Example1"
* insert AddMetaProfile(USCorePractitionerProfile)
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "212222AB"
* name.use = #official
* name.family = "Smith"
* name.given[0] = "Ronald"
* name.given[+] = "Q"

Instance: DispositionLocation-Example1
InstanceOf: DispositionLocation
Usage: #example
Description: "DispositionLocation-Example1"
* insert AddMetaProfile(DispositionLocation)
* name = "Rosewood Cemetary"
* address.line = "303 Rosewood Ave"
* address.city = "Danville"
* address.state = "VA"
* address.postalCode = "24541"
* address.country = "US"
* physicalType = $location-physical-type#si "Site"