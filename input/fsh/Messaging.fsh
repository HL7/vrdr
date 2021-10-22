RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

Profile: DeathMessageOutcome
Parent: OperationOutcome
Id: VRDR-DeathMessageOutcome
Title:  "Outcome Profile"
Description: "Outcome profile to support profile-based slicing of bundles"

CodeSystem: RaceCodesCS
Id: VRDR-Race-cs
Title: "Race Codes Values"
Description: "Race Code Values"
// RACE1E..RACE8EorRACE16C..RACE23CorRACEBRG
* #RACE1E "RACE1E" "RACE1E"
* #RACE2E "RACE2E" "RACE2E"
* #RACE3E "RACE3E" "RACE3E"
* #RACE4E "RACE4E" "RACE4E"
* #RACE5E "RACE5E" "RACE5E"
* #RACE6E "RACE6E" "RACE6E"
* #RACE7E "RACE7E" "RACE7E"
* #RACE8E "RACE8E" "RACE8E"
* #RACE16C "RACE16C" "RACE16C"
* #RACE17C "RACE17C" "RACE17C"
* #RACE18C "RACE18C" "RACE18C"
* #RACE19C "RACE19C" "RACE19C"
* #RACE20C "RACE20C" "RACE20C"
* #RACE21C "RACE21C" "RACE21C"
* #RACE22C "RACE22C" "RACE22C"
* #RACE23C "RACE23C" "RACE23C"

ValueSet: RaceCodesVS
Id: VRDR-Race-vs
Title: "Race Codes Values"
Description: "Race Code Values"
* include codes from system RaceCodesCS

CodeSystem: EthnicCodesCS
Id: VRDR-EthnicCodes-cs
Title: "Ethnic Codes Values"
Description: "EthnicCodes Values"
* #DETHNICE "DETHNICE" "DETHNICE"
* #DETHNIC5C "DETHNIC5C"

ValueSet: EthnicCodesVS
Id: VRDR-EthnicCodes-vs
Title: "Ethnic Codes Values"
Description: "EthnicCodes Values"
* include codes from system EthnicCodesCS

CodeSystem: InternalRejectCodesCS
Id: VRDR-InternalRejectCodes-cs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* #1 "Reject1" "Reject1"
* #2 "Reject2" "Reject2"
* #3 "Reject3" "Reject3"
* #4 "Reject4" "Reject4"
* #5 "Reject5" "Reject5"
* #6 "Reject6" "Reject6"
* #7 "Reject7" "Reject7"
* #8 "Reject8" "Reject8"
* #9 "Reject9" "Reject9"
* #U "No Code" "No Code"

ValueSet: InternalRejectCodesVS
Id: VRDR-InternalRejectCodes-vs
Title: "Internal Reject Codes Values"
Description: "Internal Reject Codes Values"
* include codes from system InternalRejectCodesCS

CodeSystem: SystemRejectCodesCS
Id: VRDR-SystemRejectCodes-cs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* #ACMEReject "ACME Reject" "ACME Reject"
* #MICARRejectDdictionaryMatch "MICAR Reject - dictionary match" "MICAR Reject - dictionary match"
* #MICARRejectRuleApplication "MICAR Reject - Rule Application" "MICAR Reject - Rule Application"
* #NotRejected "Not Rejected" "Not Rejected"
* #RecordReviewed "Record Reviewed" "Record Reviewed"

ValueSet: SystemRejectCodesVS
Id: VRDR-SystemRejectCodes-vs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* include codes from system SystemRejectCodesCS

CodeSystem: MessageHeaderURICS
Id: VRDR-MessageHeaderURI-cs
Title: "MessageHeader URI Values"
Description: "MessageHeader URI Values"
* #http://nchs.cdc.gov/vrdrsubmission "VRDR Submission" "Indicates that the payload is aninitial (or retransmission of an unacknowledged) submission of a VRDR Death Certificate
Document"
* #http://nchs.cdc.gov/vrdrsubmissionupdate "VRDR Update" "Indicates thisis  an  update  to  a  previously  acknowledged  submission  of  a  VRDR  DeathCertificate Document "
* #http://nchs.cdc.gov/vrdrsubmissionvoid   "VRDR Void" "Indicates thisis  void  of  a  VRDR  DeathCertificate Document "
* #http://nchs.cdc.gov/vrdracknowledgement  "VRDR Acknowledgement" "Indicates thisis  an  acknowledgement "
* #http://nchs.cdc.gov/vrdrcodingupdate     "VRDR Coding Update" "Indicates thisis  an  coding update "
* #http://nchs.cdc.gov/vrdrcoding "VRDR Coding" " Initial Coding Response"

ValueSet: DeathMessageHeaderURIVS
Id: VRDR-DeathMessageHeaderURI-vs
Title: "DeathMessageHeader URI Values"
Description: "DeathMessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmission "VRDR Submission"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmissionupdate "VRDR Update"


ValueSet: CodingMessageHeaderURIVS
Title: "CodingMessageHeader URI Values"
Description: "CodingMessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrcoding "VRDR Coding"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrcodingupdate     "VRDR Coding Update"

Profile:  DeathMessageSubmissionHeader
Parent: MessageHeader
Id: VRDR-DeathMessageSubmissionHeader
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmission (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathRecordUpdateHeader
Parent: MessageHeader
Id: VRDR-DeathRecordUpdateHeader
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrupdate (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathMessageVoidHeader
Parent: MessageHeader
Id: VRDR-DeathMessageVoidHeader
Title:  "Death Message Void Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmissionvoid (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageVoidParameters)

Profile:  CodingMessageHeader
Parent: MessageHeader
Id: VRDR-CodingMessageHeader
Title:  "Coding Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrcoding (exactly)
* insert CommonHeaderStuff
* focus only Reference(CodingMessageParameters)

Profile:  CodingMessageUpdateHeader
Parent: MessageHeader
Id: VRDR-CodingMessageUpdateHeader
Title:  "Coding Message Update Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrcodingupdate (exactly)
* insert CommonHeaderStuff
* focus only Reference(CodingMessageParameters)

Profile:  AcknowledgementMessageHeader
Parent: MessageHeader
Id: VRDR-AcknowledgementMessageHeader
Title:  "Acknowledgement Message Header"
* eventUri =  MessageHeaderURICS#http://nchs.cdc.gov/vrdracknowledgement (exactly)
* insert CommonHeaderStuff
* response.identifier 1..1
* response.identifier ^short = "The value of the MessageHeader.id for the message that is being acknowledged"
* response.code = #ok (exactly)
* focus only Reference(DeathMessageParameters)

Profile:  ExtractionErrorHeader
Parent: MessageHeader
Id: VRDR-ExtractionErrorHeader
Title:  "Extraction Error Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrextractionerror (exactly)
* insert CommonHeaderStuff
* response.identifier ^short = "The value of the MessageHeader.id for the message with errors"
* response.code = #fatal-error
* response.details 1..1
* response.details only Reference(DeathMessageOutcome)
* focus only Reference(DeathMessageParameters)

RuleSet: BaseMessageParameterSlices
* insert ParameterNameType(jurisdiction_id, string)
* parameter[jurisdiction_id].value[x] from VRDRJurisdictionVS (required)
* insert ParameterNameType(cert_no, unsignedInt) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"


RuleSet: ParameterName(name)
* parameter[{name}].name = "{name}"

RuleSet: ParameterNameType(name, type)
* insert ParameterName({name})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0



Profile:  DeathMessageParameters
Parent: Parameters
Id: VRDR-DeathMessageParameters
Title:  "Death Message Parameters"
* id MS
// jurisdiction_id
// cert_no
// death_year
// state_auxiliary_id
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter contains
    jurisdiction_id 1..1 and
    cert_no 1..1 and
    death_year 1..1 and
    state_auxiliary_id 0..1 MS
* insert BaseMessageParameterSlices

Profile: DeathMessageVoidParameters
Parent: DeathMessageParameters
Id: VRDR-DeathMessageVoidParameters
* parameter contains
    block_count 1..1
* insert ParameterNameType(block_count, unsignedInt)


CodeSystem: ACMETRANSAXCodingStatusCS
Id: VRDR-ACMETRANSAXCodingStatus-cs
Title: "ACMETRANSAX Coding StatusCS"
Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
* #0 "0" "0"
* #1 "1" "1"
* #2 "2" "2"
* #3 "3" "3"
* #4 "4" "4"
* #5 "5" "5"
* #6 "6" "6"
* #7 "7" "7"
* #8 "8" "8"
* #9 "9" "9"


ValueSet: ACMETRANSAXCodingStatusVS
Id: VRDR-ACMETRANSAXCodingStatus-vs
Title: "ACMETRANSAX Coding StatusVS"
Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
* include codes from system ACMETRANSAXCodingStatusCS

Profile:  CodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-CodingMessageParameters
Title:  "Coding Message Parameters"

* parameter contains
    rec_yr 0..1 and           //uint
    rec_mo 0..1 and          //uint
    rec_dy 0..1 and          //uint
    cs 0..1 and    // codeable
    ship 0..1 and // string
    sys_rej 0..1 and // sysrej -- value set of NotRjected and other things
    int_rej 0..1 and  // one character reject code --  1, 2, 3, 4, 5, 9
    ethnicity 0..1 and // part contains name=DETHNICE, codeable
    race 0..* and  // part contains list with name=RACE1E, etc and codeable
    underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..1 and // part contains list of codeable concepts
    entity_axis_code 0..* and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string
    other_specified_place 0..1 // string
* insert ParameterNameType(rec_yr, unsignedInt)
* insert ParameterNameType(rec_mo, unsignedInt)
* insert ParameterNameType(rec_dy, unsignedInt)
* insert ParameterNameType(cs, CodeableConcept)
* parameter[cs].value[x] from ACMETRANSAXCodingStatusVS (required)
* insert ParameterNameType(ship, string)
* insert ParameterNameType(sys_rej, string)
* parameter[sys_rej].value[x] from  SystemRejectCodesVS (required)
* insert ParameterNameType(int_rej, string)
* insert ParameterName(ethnicity)
* insert ParameterName(race)
* insert ParameterNameType(underlying_cause_of_death, CodeableConcept)
* parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterName(record_cause_of_death)
* insert ParameterName(entity_axis_code)
* insert ParameterNameType(manner, string)
* insert ParameterNameType(injpl, string)
* insert ParameterNameType(other_specified_place, string)
* parameter[int_rej].value[x] from InternalRejectCodesVS (required)
* parameter[ethnicity].part.name only string
* parameter[ethnicity].part.name from EthnicCodesVS (required)
* parameter[ethnicity].part.value[x] only CodeableConcept // bind to value set
* parameter[race].part.name only string
* parameter[race].part.name from RaceCodesVS (required)
* parameter[race].part.value[x] only unsignedInt
* parameter[record_cause_of_death].part ^slicing.discriminator.type = #value
* parameter[record_cause_of_death].part ^slicing.discriminator.path = "name"
* parameter[record_cause_of_death].part ^slicing.rules = #closed
* parameter[record_cause_of_death].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[record_cause_of_death].part contains
      coding 1..*
* parameter[record_cause_of_death].part[coding].value[x] only CodeableConcept // bind to value set
* parameter[record_cause_of_death].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].part[coding].name = "coding"

* parameter[entity_axis_code].part ^slicing.discriminator.type = #value
* parameter[entity_axis_code].part ^slicing.discriminator.path = "name"
* parameter[entity_axis_code].part ^slicing.rules = #closed
* parameter[entity_axis_code].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[entity_axis_code].part contains
      lineNumber 1..1 and
      coding 1..*
* parameter[entity_axis_code].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code].part[lineNumber].value[x] only string
* parameter[entity_axis_code].part[coding].name = "coding"
* parameter[entity_axis_code].part[coding].value[x] only CodeableConcept
* parameter[entity_axis_code].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].value[x] 0..0
* parameter[record_cause_of_death].resource 0..0
* parameter[entity_axis_code].value[x] 0..0
* parameter[entity_axis_code].resource 0..0
* parameter[ethnicity].value[x] 0..0
* parameter[ethnicity].resource 0..0
* parameter[race].value[x] 0..0
* parameter[race].resource 0..0


Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRDR-DeathRecordSubmissionMessage
Title: "Death Record Submission Message "
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageSubmissionHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordUpdateMessage
Parent: Bundle
Id: VRDR-DeathRecordUpdateMessage
Title: "Death Record Update Message"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathRecordUpdateHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordVoidMessage
Parent: Bundle
Id: VRDR-DeathRecordVoidMessage
Title: "Death Record Void Message "
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageVoidHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Void Parameters, Death Record Void Parameters, DeathMessageVoidParameters)

Profile: CodingMessage
Parent: Bundle
Id: VRDR-CodingMessage
Title: "Coding Message"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, CodingMessageHeader)
* insert BundleEntry(codingParameters, 1, 1, Coding Message Parameters, Coding Parameters, CodingMessageParameters)


Profile: CodingUpdateMessage
Parent: Bundle
Id: VRDR-CodingUpdateMessage
Title: "Coding Update Message"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, CodingMessageUpdateHeader)
* insert BundleEntry(codingParameters, 1, 1, Coding Message Parameters, Coding Parameters, CodingMessageParameters)


Profile: AcknowledgementMessage
Parent: Bundle
Id: VRDR-AcknowledgementMessage
Title: "Acknowledgement Message"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Acknowledgement Message Header , Acknowledgement Message Header, AcknowledgementMessageHeader)
* insert BundleEntry(acknowledgementParameters, 1, 1, Acknowledgement Message Parameters, Acknowledgement Parameters, DeathMessageParameters)


Profile: ExtractionErrorMessage
Parent: Bundle
Id: VRDR-ExtractionErrorMessage
Title: "Extraction Error Message"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Extraction Error Message Header , Extraction Error Message Header, ExtractionErrorHeader)
* insert BundleEntry(extractionErrorParameters, 0, 1, Extraction Error Message Parameters, Extraction Error Parameters, DeathMessageParameters)
* insert BundleEntry(extractionErrorOutcome, 1, 1, Extraction Error Operation Outcome, Extraction Error Operation Outcome, DeathMessageOutcome)


RuleSet: CommonBundleStuff
* ^status = #draft
* type  = #message
* id 1..1
* timestamp 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: CommonHeaderStuff
* eventUri 1..1
* destination 1..1
* source 1..1
* focus 1..1
* id 1..1