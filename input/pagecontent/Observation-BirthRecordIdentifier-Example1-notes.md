```
Instance: BirthRecordIdentifier-Example1
InstanceOf: BirthRecordIdentifier
Title: "BirthRecordIdentifier-Example1"
Description: "BirthRecordIdentifier-Example1"
Usage: #example
* status = #final
* code = http://terminology.hl7.org/CodeSystem/v2-0203#BR "Birth registry number"
* component[0].code = http://loinc.org#21842-0 "Birthplace"
* component[=].valueString = "YC"
* component[+].code = http://loinc.org#80904-6 "Birth year"
* component[=].valueDateTime = "1961"
* subject.reference = "Patient/Decedent-Example1"
* valueString = "717171"
```