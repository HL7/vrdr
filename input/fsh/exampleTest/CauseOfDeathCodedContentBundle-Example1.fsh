Instance: CauseOfDeathCodedContentBundle-Example1
InstanceOf: Bundle
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-coded-bundle"
* identifier
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
    * valueString = "000182"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier1"
    * valueString = "000000000001"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier2"
    * valueString = "100000000001"
  * system = "http://nchs.cdc.gov/vrdr_id"
  * value = "2020NY000182"
* entry[0]
  * resource = ActivityAtTimeOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/ActivityAtTimeOfDeath-Example1"
* entry[+]
  * resource = ManualUnderlyingCauseOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/ManualUnderlyingCauseOfDeath-Example1"
* entry[+]
  * resource = AutomatedUnderlyingCauseOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/AutomatedUnderlyingCauseOfDeath-Example1"
* entry[+]
  * resource = RecordAxisCauseOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/RecordAxisCauseOfDeath-Example1"
* entry[+]
  * resource = EntityAxisCauseOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/EntityAxisCauseOfDeath-Example1"
* entry[+]
  * resource = EntityAxisCauseOfDeath-Example2
  * fullUrl = "http://www.example.org/fhir/Observation/EntityAxisCauseOfDeath-Example2"
* entry[+]
  * resource = EntityAxisCauseOfDeath-Example3
  * fullUrl = "http://www.example.org/fhir/Observation/EntityAxisCauseOfDeath-Example3"
* entry[+]
  * resource = EntityAxisCauseOfDeath-Example4
  * fullUrl = "http://www.example.org/fhir/Observation/EntityAxisCauseOfDeath-Example4"
* entry[+]
  * resource = PlaceOfInjury-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/PlaceOfInjury-Example1"
* entry[+]
  * resource = CodingStatusValues-Example1
  * fullUrl = "http://www.example.org/fhir/Parameter/CodingStatusValues-Example1"
* entry[+]
  * resource = DecedentPregnancyStatus-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentPregnancyStatus-Example1"
* entry[+]
  * resource = TobaccoUseContributedToDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/TobaccoUseContributedToDeath-Example1"
* entry[+]
  * resource = SurgeryDate-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/SurgeryDate-Example1"
* entry[+]
  * resource = MannerOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/MannerOfDeath-Example1"
* entry[+]
  * resource = InjuryIncident-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/InjuryIncident-Example1"
* entry[+]
  * resource = DeathCertification-Example2
  * fullUrl = "http://www.example.org/fhir/Procedure/DeathCertification-Example2"
* entry[+]
  * resource = CauseOfDeathPart1-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example1"
* entry[+]
  * resource = CauseOfDeathPart1-Example2
  * fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example2"
* entry[+]
  * resource = CauseOfDeathPart2-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart2-Example1"
* entry[+]
  * resource = AutopsyPerformedIndicator-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/AutopsyPerformedIndicator-Example1"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"