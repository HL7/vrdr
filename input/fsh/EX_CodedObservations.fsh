Instance: AutomatedUnderlyingCauseOfDeath-Example1
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #example
Description: "AutomatedUnderlyingCauseOfDeath-Example1"
* insert AddMetaProfile(AutomatedUnderlyingCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#C15.3 "Malignant neoplasm: Upper third of oesophagus"

Instance: RecordAxisCauseOfDeath-Example1
InstanceOf: RecordAxisCauseOfDeath
Usage: #example
Description: "RecordAxisCauseOfDeath-Example1"
* insert AddMetaProfile(RecordAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#C15.3 "Malignant neoplasm: Upper third of oesophagus"
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-Example1
InstanceOf: EntityAxisCauseOfDeath
Usage: #example
Description: "EntityAxisCauseOfDeath-Example1"
* insert AddMetaProfile(EntityAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#C15.3 "Malignant neoplasm: Upper third of oesophagus"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: ManualUnderlyingCauseOfDeath-Example1
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #example
Description: "ManualUnderlyingCauseOfDeath-Example1"
* insert AddMetaProfile(ManualUnderlyingCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#C15.3 "Malignant neoplasm: Upper third of oesophagus"

Instance: PlaceOfInjury-Example1
InstanceOf: PlaceOfInjury
Usage: #example
Description: "PlaceOfInjury-Example1"
* insert AddMetaProfile(PlaceOfInjury)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $loinc#LA14084-0	"Home"

Instance: ActivityAtTimeOfDeath-Example1
InstanceOf: ActivityAtTimeOfDeath
Usage: #example
Description: "ActivityAtTimeOfDeath-Example1"
* insert AddMetaProfile(ActivityAtTimeOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = ActivityAtTimeOfDeathCS#1 "While engaged in leisure activities."

Instance: CodedRaceAndEthnicity-Example1
InstanceOf: CodedRaceAndEthnicity
Usage: #example
Description: "CodedRaceAndEthnicity-Example1"
* insert AddMetaProfile(CodedRaceAndEthnicity)
* status = #final
* subject.display = "NCHS generated"
* component[FirstEditedCode].valueCodeableConcept = RaceCodeCS#101 "White"
* component[SecondEditedCode].valueCodeableConcept = RaceCodeCS#122 "Israeli"
* component[HispanicCode].valueCodeableConcept = HispanicOriginCS#233 "Chilean"
* component[RaceRecode40].valueCodeableConcept = RaceRecode40CS#20 "AIAN and Asian"

Instance: InputRaceAndEthnicity-Example1
InstanceOf: InputRaceAndEthnicity
Usage: #example
Description: "InputRaceAndEthnicity-Example1"
* insert AddMetaProfile(InputRaceAndEthnicity)
* status = #final
* subject.display = "NCHS generated"
* component[White].valueBoolean = true
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[AmericanIndianOrAlaskaNative].valueBoolean = false
* component[AsianIndian].valueBoolean = false
* component[Chinese].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[OtherAsian].valueBoolean = false
* component[NativeHawaiian].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y

Instance: CodingStatusValues-Example1
InstanceOf: CodingStatusValues
Usage: #example
Description:   "CodingStatusValues-Example1"
* insert AddMetaProfile(CodingStatusValues)
* parameter[shipmentNumber].valueString = "A2B2"
* parameter[receiptDate].valueDate = "2021-12-12"
* parameter[coderStatus].valueInteger = 5
* parameter[intentionalReject].valueCodeableConcept = IntentionalRejectCS#1
* parameter[acmeSystemReject].valueCodeableConcept = SystemRejectCS#0
* parameter[transaxConversion].valueCodeableConcept = TransaxConversionCS#3
