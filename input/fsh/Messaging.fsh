RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

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
    sysrej 0..1 and // sysrej -- value set of NotRjected and other things
    intrej 0..1 and
    ethnicity 0..1 and // part contains name=DETHNICE, codeable
    race 0..* and  // part contains list with name=RACE1E, etc and codeable
    underlyingcauseofdeath 0..1 and // icd10
    recordcauseofdeath 0..1 and // part contains list of codeable concepts
    entityaxiscode 0..* and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string
    otherspecifiedplace 0..1 // string
* insert BaseMessageParameterSlices
* insert ParameterNameType(rec_yr, unsignedInt)
* insert ParameterNameType(rec_mo, unsignedInt)
* insert ParameterNameType(rec_dy, unsignedInt)
* insert ParameterNameType(cs, CodeableConcept)
* insert ParameterNameType(ship, string)
* insert ParameterNameType(sysrej, string)
* insert ParameterNameType(intrej, string)
* insert ParameterName(ethnicity)
* insert ParameterName(race)
* insert ParameterNameType(underlyingcauseofdeath, CodeableConcept)
* insert ParameterName(recordcauseofdeath)
* insert ParameterName(entityaxiscode)
* insert ParameterNameType(manner, string)
* insert ParameterNameType(injpl, string)
* insert ParameterNameType(otherspecifiedplace, string)
* parameter[ethnicity].part.name only string  // these should be IJE Ethnicity Codes
* parameter[ethnicity].part.value[x] only CodeableConcept // bind to value set
* parameter[race].part.name only string  // these should be IJE Ethnicity Codes
* parameter[race].part.value[x] only CodeableConcept // bind to value set
* parameter[entityaxiscode].part.name only string  // these should be IJE Ethnicity Codes
* parameter[recordcauseofdeath].part.value[x] only CodeableConcept // bind to value set


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