RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

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

Profile:  DeathMessageHeader
Parent: MessageHeader
Id: VRDR-DeathMessageHeader
Title:  "Death Message Header"
* eventUri from DeathMessageHeaderURIVS
* eventUri 1..1
* destination MS
* source MS
* focus only Reference(DeathCertificateDocument)

Profile:  CodingMessageHeader
Parent: MessageHeader
Id: VRDR-CodingMessageHeader
Title:  "Coding Message Header"
* eventUri from CodingMessageHeaderURIVS
* eventUri 1..1
* destination MS
* source MS

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

Profile:  DeathMessageParameters
Parent: Parameters
Id: VRDR-DeathMessageParameters
Title:  "Death Message Parameters"
* id MS
// jurisdiction_id
// cert_no
// death_year
// state_auxiliary_id
* parameter ^slicing.discriminator.type = #profile
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter contains
    jurisdiction_id 1..1 and
    cert_no 1..1 and
    death_year 1..1 and
    state_auxiliary_id 0..1 MS
* insert BaseMessageParameterSlices

Profile:  CodingMessageParameters
Parent: Parameters
Id: VRDR-CodingMessageParameters
Title:  "Coding Message Parameters"
* id MS
* parameter ^slicing.discriminator.type = #profile
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter contains
    jurisdiction_id 1..1 and  // jurisdiction code
    state_auxiliary_id 0..1 and //uint
    cert_no 0..1 and          //uint
    death_year 0..1 and           //uint
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
* insert BaseMessageParameterSlices
* insert ParameterNameType(rec_yr, unsignedInt)
* insert ParameterNameType(rec_mo, unsignedInt)
* insert ParameterNameType(rec_dy, unsignedInt)
* insert ParameterNameType(cs, CodeableConcept)
* insert ParameterNameType(ship, string)
* insert ParameterNameType(sys_rej, string)
* parameter[sys_rej].value[x] from  SystemRejectCodesVS (required)
* insert ParameterNameType(int_rej, string)
* insert ParameterName(ethnicity)
* insert ParameterName(race)
* insert ParameterNameType(underlying_cause_of_death, CodeableConcept)
* insert ParameterName(record_cause_of_death)
* insert ParameterName(entity_axis_code)
* insert ParameterNameType(manner, string)
* insert ParameterNameType(injpl, string)
* insert ParameterNameType(other_specified_place, string)
* parameter[ethnicity].part.name only string  // these should be IJE Ethnicity Codes
* parameter[ethnicity].part.name from EthnicCodesVS
* parameter[ethnicity].part.value[x] only CodeableConcept // bind to value set
* parameter[race].part.name only string  // these should be IJE Race
* parameter[race].part.name from RaceCodesVS
* parameter[race].part.value[x] only unsignedInt
* parameter[record_cause_of_death].part.value[x] only CodeableConcept // bind to value set
* parameter[record_cause_of_death].part.name = "coding"
* parameter[record_cause_of_death].part.value[x] only CodeableConcept
* parameter[record_cause_of_death].part.value[x] from $icd-10
* parameter[entity_axis_code].part ^slicing.discriminator.type = #profile
* parameter[entity_axis_code].part ^slicing.discriminator.path = "name"
* parameter[entity_axis_code].part ^slicing.rules = #open
* parameter[entity_axis_code].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[entity_axis_code].part contains
      line 1..1 and
      coding 1..1



Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRDR-DeathRecordSubmissionMessage
Title: "Death Record Submission Message"
* ^status = #draft
* type  = #message
* id MS
* timestamp MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageHeader)
* insert BundleEntry(deathRecordParameters, 1, *, Death Message Parameters, Death Record Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, *, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)
// Put the MS for entry.resource LAST, otherwise it doesn't take for some reason
* timestamp and entry and entry.resource MS

Profile: CodingMessage
Parent: Bundle
Id: VRDR-CodingMessage
Title: "Coding Message"
* ^status = #draft
* type  = #message
* id MS
* timestamp MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, CodingMessageHeader)
* insert BundleEntry(codingParameters, 1, *, Coding Message Parameters, Coding Parameters, CodingMessageParameters)
// Put the MS for entry.resource LAST, otherwise it doesn't take for some reason
* timestamp and entry and entry.resource MS