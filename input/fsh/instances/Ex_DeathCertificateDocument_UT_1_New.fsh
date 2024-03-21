Instance: DeathCertificateDocument-UT-1
InstanceOf: DeathCertificateDocument
Description: "Example Record from UT"
Usage: #example
* timestamp = "2022-12-23T19:55:16.4587968+00:00"
* identifier.extension[certificateNumber].valueString = "000003"
* identifier.extension[auxiliaryStateIdentifier1].valueString = "2022000003"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2022UT000003"
* type = #document
* insert addentry(Composition, DeathCertificateUT-Example1)
* insert addentry(Patient,DecedentUT-Example1)
* insert addentry(Procedure, ProcedureDeathCertificationUT-Example1)
* insert addentry(Practitioner, PractitionerUT-Example1)
* insert addentry(RelatedPerson, MotherUT-Example1)
* insert addentry(RelatedPerson, FatherUT-Example1)
* insert addentry(Observation, InputRaceAndEthnicityUT-Example1)
* insert addentry(Observation, BirthRecordIdentifierUT-Example1)
* insert addentry(Observation, EducationUT-Example1)
* insert addentry(Observation, PregnancyUT-Example1)
* insert addentry(Observation, AutopsyPerformedIndicatorUT-Example1)
* insert addentry(Observation, CauseOfDeathPart1UT-Example1)
* insert addentry(Observation, DeathDateUT-Example1)
* insert addentry(Organization, FuneralHomeUT-Example1)
* insert addentry(Observation, MannerOfDeathUT-Example1)
* insert addentry(Observation, TobaccoUseUT-Example1)
* insert addentry(Observation, InjuryIncidentUT-Example1)
* insert addentry(Observation, EmergingIssuesUT-Example1)
* insert addentry(Location, DeathLocationUT-Example1)
* insert addentry(Location, DispositionLocationUT-Example1)
* insert addentry(Observation, MilitaryServiceUT-Example1)
* insert addentry(Observation, AgeUT-Example1)
* insert addentry(Observation, UsualWorkUT-Example1)
* insert addentry(Observation, DispositionMethodUT-Example1)


Instance: DeathCertificateUT-Example1
InstanceOf: DeathCertificate
Usage: #example
Description: "DeathCertificateUT-Example1"
* extension[FilingFormat].valueCodeableConcept = FilingFormatCS#electronic
* extension[StateSpecificField].valueString = "20220101"
* status = #final
* title = "Death Certificate for Davis Lineberry Jr"
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(DecedentUT-Example1)
* date = "2022-12-01T02:46:13-05:00"
* author = Reference(PractitionerUT-Example1)
* attester.mode = #legal
* attester.party = Reference(PractitionerUT-Example1)
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(ProcedureDeathCertificationUT-Example1)
* section[DecedentDemographics]
  * entry[0] = Reference(DecedentUT-Example1)
  * entry[+] = Reference(BirthRecordIdentifierUT-Example1)
  * entry[+] = Reference(InputRaceAndEthnicityUT-Example1)
  * entry[+] = Reference(EducationUT-Example1)
  * entry[+] = Reference(AgeUT-Example1 )
  * entry[+] = Reference(FatherUT-Example1)
  * entry[+] = Reference(MotherUT-Example1)
  * entry[+] = Reference(UsualWorkUT-Example1)
  * entry[+] = Reference(MilitaryServiceUT-Example1)
  * entry[+] = Reference(EmergingIssuesUT-Example1)
* section[DeathCertification]
  * entry[0] = Reference(PractitionerUT-Example1)
  * entry[+] = Reference(InjuryIncidentUT-Example1)
  * entry[+] = Reference(ProcedureDeathCertificationUT-Example1)
//  * entry[+] = Reference(DeathCertificationUT-Example1)
* section[DeathInvestigation]
  * entry[0] = Reference(AutopsyPerformedIndicatorUT-Example1)
  * entry[+] = Reference(CauseOfDeathPart1UT-Example1 )
  * entry[+] = Reference(DeathDateUT-Example1)
  * entry[+] = Reference(PregnancyUT-Example1 )
  * entry[+] = Reference(TobaccoUseUT-Example1 )
  * entry[+] = Reference(DeathLocationUT-Example1 )
  * entry[+] = Reference(MannerOfDeathUT-Example1 )
* section[DecedentDisposition]
  * entry[0] = Reference(FuneralHomeUT-Example1)
  * entry[+] = Reference(DispositionMethodUT-Example1 )
  * entry[+] = Reference(DispositionLocationUT-Example1 )


Instance: DecedentUT-Example1 // f906300e-3622-459c-8201-af0d9b90fb75
InstanceOf: Decedent
Usage: #example 
Description: "DecedentUT-Example1"
* extension[NVSSSexAtDeath].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
//* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
//* extension[http://hl7.org/fhir/StructureDefinition/patient-birthPlace]
* extension[birthPlace]
  * valueAddress.use = #old
  * valueAddress.state = "CO"
  * valueAddress.country = "US"
* identifier[SSN].value = "429471420"
* name[currentLegalName]
  * family = "Lineberry"
  * given = "Davis"
  * suffix = "Jr"
* gender = #male
* birthDate = "2021-03-04"
* birthDate.extension[partialDateTime]
  * extension[year].valueUnsignedInt = 2021
  * extension[month].valueUnsignedInt = 3
  * extension[day].valueUnsignedInt = 4
* address.extension[stnum].valueString = "2722"
* address.extension[predir].valueString = "N"
* address.extension[stname].valueString = "Pin Oak"
* address.extension[stdesig].valueString = "Dr"
* address.extension[withinCityLimitsIndicator].valueCoding = $v2-0136#Y "Yes"
* address.line = "2722 N Pin Oak Dr"
* address.city = "Laramie"
* address.city.extension[cityCode].valuePositiveInt = 45050
* address.district = "Albany"
* address.district.extension[districtCode].valuePositiveInt = 1
* address.state = "WY"
* address.postalCode = "82070"
* address.country = "US"
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept = CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* maritalStatus = $v3-MaritalStatus#S "Never Married"

Instance: InputRaceAndEthnicityUT-Example1
InstanceOf: ObservationInputRaceAndEthnicityVitalRecords
Usage: #example
Description: "InputRaceAndEthnicityUT-Example1"
// * id = "0a1ded2c-6140-4abc-9128-0af93e2f2ea5"
* status = #final
* subject = Reference(DecedentUT-Example1)
* code = CodeSystemLocalObservationsCodesVitalRecords#inputraceandethnicity 
* component[White].valueBoolean = true
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[AmericanIndianOrAlaskanNative].valueBoolean = true
* component[FirstAmericanIndianOrAlaskanNativeLiteral].valueString = "Cheyenne"
* component[Chinese].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[NativeHawaiian].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[OtherAsian].valueBoolean = false
* component[AsianIndian].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
* component[HispanicMexican].valueCodeableConcept = $v2-0136#N "No"
* component[HispanicCuban].valueCodeableConcept = $v2-0136#N "No"
* component[HispanicPuertoRican].valueCodeableConcept = $v2-0136#N "No"
* component[HispanicOther].valueCodeableConcept = $v2-0136#N "No"

Instance: PractitionerUT-Example1
InstanceOf: PractitionerVitalRecords
Usage: #example
Description: "PractitionerUT-Example1"
// * id = "practitioner-ut-example1"
* identifier.value = "161632-1999"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* name.use = #official
* name.family = "Doo"
* name.given[0] = "The"
* name.given[+] = "Scooby"
* address.use = #work
* address.line[0] = "123 Fake St"
* address.line[+] = "apt # 123"
* address.city = "Salt Lake"
* address.state = "UT"
* address.postalCode = "84111"
* address.country = "US"

Instance: BirthRecordIdentifierUT-Example1 //b2b59a71-0a15-41dd-97ef-84b494bcd2c0
InstanceOf: BirthRecordIdentifier
Usage: #example
Description: "BirthRecordIdentifierUT-Example1"
* subject = Reference(DecedentUT-Example1)
* valueString = "001023"
* component[birthYear].valueDateTime = "2021"
* component[birthJurisdiction].valueString = "CO"

Instance: EducationUT-Example1
InstanceOf: ObservationEducationLevelVitalRecords
Usage: #example
Description: "EducationUT-Example1"
* subject = Reference(DecedentUT-Example1)
* status = #final
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* valueCodeableConcept = $v3-EducationLevel#ELEM "Elementary School"

Instance: FatherUT-Example1
InstanceOf: DecedentFather
Usage: #example
Description: "FatherUT-Example1"
* patient = Reference(DecedentUT-Example1)
* relationship = $v3-RoleCode#FTH "father"
* name.use = #official
* name.family = "Lineberry"
* name.given[0] = "*"
* name.given[+] = "*"

Instance: MotherUT-Example1
InstanceOf: DecedentMother
Usage: #example
Description: "MotherUT-Example1"
* patient = Reference(DecedentUT-Example1)
* relationship = $v3-RoleCode#MTH "mother"
* name.use = #official
* name.family = "*"
* name.given[0] = "*"
* name.given[+] = "*"

Instance: AutopsyPerformedIndicatorUT-Example1
InstanceOf: AutopsyPerformedIndicator
Usage: #example
Description: "AutopsyPerformedIndicatorUT-Example1"
// * id = "95176132-1030-418d-b1a4-594872f6bec7"
* subject = Reference(DecedentUT-Example1)
* valueCodeableConcept = $v3-NullFlavor#UNK "Unknown"
* component[autopsyResultsAvailable].valueCodeableConcept = $v3-NullFlavor#UNK "Unknown"

Instance: CauseOfDeathPart1UT-Example1 
InstanceOf: CauseOfDeathPart1
Usage: #example
Description: "CauseOfDeathPart1UT-Example1 "
* subject = Reference(DecedentUT-Example1)
* performer = Reference(PractitionerUT-Example1)
* valueCodeableConcept.text = "Pending"
* component[lineNumber].valueInteger = 1
* component[interval].valueString = "Pending"
* status = #preliminary

Instance: DeathDateUT-Example1
InstanceOf: DeathDate
Usage: #example
Description: "DeathDateUT-Example1"
* status = #final 
* subject = Reference(DecedentUT-Example1)
* effectiveDateTime = "2022-01-17T20:23:00-05:00"
* performer = Reference(PractitionerUT-Example1)
* valueDateTime.extension[partialDateTime]
  * extension[year].valueUnsignedInt = 2022
  * extension[month].valueUnsignedInt = 1
  * extension[day].valueUnsignedInt = 17
  * extension[time].valueTime = "18:23:00"
//* valueDateTime.extension.url = Canonical(ExtensionDateTimePartAbsentReasonVitalRecords)
* component.code = $loinc#58332-8 "Location of death"
* component.valueCodeableConcept = $sct#16983000 "Death in hospital"

Instance: DeathLocationUT-Example1 
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocationUT-Example1"
* name = "Salt Lake Regional Medical Cen"
* description = "Facility"
* address.city = "Salt Lake City"
* address.state = "UT"

Instance: AgeUT-Example1 
InstanceOf: DecedentAge
Usage: #example
Description: "AgeUT-Example1 "
// * id = "7eda2a2c-f92d-4885-949f-34c500241300"
* subject = Reference(DecedentUT-Example1)
//* valueQuantity.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* valueQuantity.extension[bypassEditFlag].valueCodeableConcept = CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* valueQuantity = 10 'mo' "Months"

Instance: DispositionMethodUT-Example1 
InstanceOf: DecedentDispositionMethod
Usage: #example
Description: "DispositionMethodUT-Example1"
* status = #final 
* subject = Reference(DecedentUT-Example1)
* valueCodeableConcept = $sct#449971000124106 "Burial"

Instance: DispositionLocationUT-Example1
InstanceOf: DispositionLocation
Usage: #example
Description: "DispositionLocationUT-Example1"
// * id = "8371fc22-95da-4f72-a4be-674fc267cb7a"
* name = "Salt Lake City Cemetery"
* address.city = "Salt Lake City"
* address.state = "UT"
* address.country = "US"

Instance: UsualWorkUT-Example1
InstanceOf: ObservationUsualWorkVitalRecords
Usage: #example
Description: "UsualWorkUT-Example1"
// * id = "0051e0b6-6990-4190-93a6-87442b4a50aa"
* status = #final
* subject = Reference(DecedentUT-Example1)
* valueCodeableConcept.text = "Infant"
* component[odh-UsualIndustry].valueCodeableConcept.text = "Never Worked"


Instance: MilitaryServiceUT-Example1
InstanceOf: DecedentMilitaryService
Usage: #example
Description: "MilitaryServiceUT-Example1"
// * id = "60bb97be-43fd-4e36-bd0d-49a7efdcbcda"
* subject = Reference(DecedentUT-Example1)
* valueCodeableConcept = $v2-0136#N "No"

Instance: PregnancyUT-Example1 
InstanceOf: DecedentPregnancyStatus
Usage: #example
Description: "PregnancyUT-Example1"
* status = #final 
* subject = Reference(DecedentUT-Example1)
//* valueCodeableConcept.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* valueCodeableConcept = $v3-NullFlavor#NA "Not applicable"

Instance: ExaminerContactedUT-Example1 
InstanceOf: ExaminerContacted
Usage: #example
Description: "ExaminerContactedUT-Example1"
* subject = Reference(DecedentUT-Example1)
* valueCodeableConcept = $v2-0136#N "No"

Instance: FuneralHomeUT-Example1
InstanceOf: FuneralHome
Usage: #example
Description: "FuneralHomeUT-Example1"
* active = true
* name = "Colonial Memorial Mortuary"
* address.line = "2128 South State"
* address.city = "Salt Lake City"
* address.district = "Salt Lake"
* address.state = "UT"
* address.postalCode = "84115"
* address.country = "US"

Instance: InjuryIncidentUT-Example1 
InstanceOf: InjuryIncident
Usage: #example
Description: "InjuryIncidentUT-Example1"
* status = #final 
* subject = Reference(DecedentUT-Example1)
* component[workInjuryIndicator].valueCodeableConcept = $v3-NullFlavor#UNK "Unknown"

Instance: MannerOfDeathUT-Example1 
InstanceOf: MannerOfDeath
Usage: #example
Description: "MannerOfDeathUT-Example1"
* status = #final 
* subject = Reference(DecedentUT-Example1)
* performer = Reference(PractitionerUT-Example1)
* valueCodeableConcept = $sct#185973002 "Patient awaiting investigation"

Instance: TobaccoUseUT-Example1 
InstanceOf: TobaccoUseContributedToDeath
Usage: #example
Description: "TobaccoUseUT-Example1"
//* id = "8942bdc4-b1dd-4458-aa6a-158e22ea3d24"
* subject = Reference(DecedentUT-Example1)
* valueCodeableConcept = $sct#373067005 "No"

Instance: ProcedureDeathCertificationUT-Example1
InstanceOf: DeathCertification
Usage: #example
Description: "ProcedureDeathCertificationUT-Example1"
// * id = procedure-death-certification-ut-example1 
* status = #completed
* identifier.value = "161632-1999"
// * category = $sct#103693007 "Diagnostic procedure"
// * code = $sct#308646001 "Death certification"
* subject = Reference(DecedentUT-Example1)
* performer.function = $sct#434641000124105 "Death certification and verification by physician (procedure)"
* performer.actor = Reference(PractitionerUT-Example1)
* performedDateTime = "2021-11-14T16:39:40-05:00"

Instance: EmergingIssuesUT-Example1
InstanceOf: ObservationEmergingIssuesVitalRecords
Usage: #example
Description: "EmergingIssuesUT-Example1"
// * id = "3a1d5d86-4399-48ad-9d55-a22ddd283bfa"
* subject = Reference(DecedentUT-Example1)
* component[EmergingIssue20].valueString = "043-A-110234"