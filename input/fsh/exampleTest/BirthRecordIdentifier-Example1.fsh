Instance: BirthRecordIdentifier-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-birth-record-identifier"
* component[0]
  * code = $loinc#21842-0
  * valueString = "YC"
* component[+]
  * code = $loinc#80904-6
  * valueDateTime = "1961"
* status = #final
* code = $v2-0203#BR "Birth registry number"
* subject = Reference(Decedent-Example1)
* valueString = "717171"