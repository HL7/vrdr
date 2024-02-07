Instance: AutomatedUnderlyingCauseOfDeath-Example1
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #example
Description: "AutomatedUnderlyingCauseOfDeath-Example1"
* insert AddMetaProfile(AutomatedUnderlyingCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#J96.0

Instance: RecordAxisCauseOfDeath-Example1
InstanceOf: RecordAxisCauseOfDeath
Usage: #example
Description: "RecordAxisCauseOfDeath-Example1"
* insert AddMetaProfile(RecordAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#J96.0
* component[position].valueInteger = 1

Instance: RecordAxisCauseOfDeath-Example2
InstanceOf: RecordAxisCauseOfDeath
Usage: #example
Description: "RecordAxisCauseOfDeath-Example2"
* insert AddMetaProfile(RecordAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#T27.3
* component[position].valueInteger = 2

Instance: EntityAxisCauseOfDeath-Example1
InstanceOf: EntityAxisCauseOfDeath
Usage: #example
Description: "EntityAxisCauseOfDeath-Example1"
* insert AddMetaProfile(EntityAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#J96.0
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-Example2
InstanceOf: EntityAxisCauseOfDeath
Usage: #example
Description: "EntityAxisCauseOfDeath-Example2"
* insert AddMetaProfile(EntityAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#T27.3
* component[lineNumber].valueInteger = 2
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-Example3
InstanceOf: EntityAxisCauseOfDeath
Usage: #example
Description: "EntityAxisCauseOfDeath-Example3"
* insert AddMetaProfile(EntityAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#X00
* component[lineNumber].valueInteger = 2
* component[position].valueInteger = 2
* component[eCodeIndicator].valueBoolean = true

Instance: EntityAxisCauseOfDeath-Example4
InstanceOf: EntityAxisCauseOfDeath
Usage: #example
Description: "EntityAxisCauseOfDeath-Example3"
* insert AddMetaProfile(EntityAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#T27.2
* component[lineNumber].valueInteger = 2
* component[position].valueInteger = 3
* component[eCodeIndicator].valueBoolean = false


Instance: ManualUnderlyingCauseOfDeath-Example1
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #example
Description: "ManualUnderlyingCauseOfDeath-Example1"
* insert AddMetaProfile(ManualUnderlyingCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#J96.0

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
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #example
Description: "CodedRaceAndEthnicity-Example1"
* insert AddMetaProfile(CodedRaceAndEthnicity)
* status = #final
* code = CodeSystemLocalObservationsCodesVitalRecords#codedraceandethnicity
* subject.display = "NCHS generated"
* component[FirstEditedCode].valueCodeableConcept = CodeSystemRaceCodeVitalRecords#101 "White"
* component[SecondEditedCode].valueCodeableConcept = CodeSystemRaceCodeVitalRecords#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = CodeSystemRaceCodeVitalRecords#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = CodeSystemRaceRecode40VitalRecords#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = CodeSystemHispanicOriginVitalRecords#233 "Chilean"


Instance: InputRaceAndEthnicity-Example1
InstanceOf: ObservationInputRaceAndEthnicityVitalRecords
Usage: #example
Description: "InputRaceAndEthnicity-Example1"
* insert AddMetaProfile(InputRaceAndEthnicity)
* status = #final
* code = CodeSystemLocalObservationsCodesVitalRecords#inputraceandethnicity
* subject.display = "NCHS generated"
* component[White].valueBoolean = true
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[AmericanIndianOrAlaskanNative].valueBoolean = true
* component[AsianIndian].valueBoolean = false
* component[Chinese].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[OtherAsian].valueBoolean = true
* component[NativeHawaiian].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
* component[FirstOtherAsianLiteral].valueString = "Malaysian"
* component[FirstAmericanIndianOrAlaskanNativeLiteral].valueString = "Arikara"
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicCuban].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicPuertoRican].valueCodeableConcept = $v2-0136#Y "Yes"
* component[HispanicOther].valueCodeableConcept = $v2-0136#N "No"

Instance: CodingStatusValues-Example1
InstanceOf: CodingStatusValues
Usage: #example
Description:   "CodingStatusValues-Example1"
* insert AddMetaProfile(CodingStatusValues)
* parameter[shipmentNumber].valueString = "A2B2"
* parameter[receiptDate].valueDate = "2021-12-12"
* parameter[coderStatus].valueInteger = 5
* parameter[intentionalReject].valueCodeableConcept = IntentionalRejectCS#1 "Reject1"
* parameter[acmeSystemReject].valueCodeableConcept = SystemRejectCS#0 "Not Rejected"
* parameter[transaxConversion].valueCodeableConcept = TransaxConversionCS#3 "Conversion using non-ambivalent table entries"
