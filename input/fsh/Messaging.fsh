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
* destination MS
* source MS
* focus only Reference(DeathCertificateDocument)

Profile:  CodingMessageHeader
Parent: MessageHeader
Id: VRDR-CodingMessageHeader
Title:  "Coding Message Header"
* eventUri from CodingMessageHeaderURIVS
* destination MS
* source MS

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
* parameter[jurisdiction_id].name = "jurisdiction_id"
* parameter[jurisdiction_id].value[x] only string   // restricted to Jurisdiction code
* parameter[jurisdiction_id].value[x] from VRDRJurisdictionVS (required)
* parameter[cert_no].name = "cert_no"
* parameter[cert_no].value[x] only unsignedInt
* parameter[death_year].name = "death_year"
* parameter[death_year].value[x] only unsignedInt
* parameter[state_auxiliary_id].name = "state_auxiliary_id"
* parameter[state_auxiliary_id].value[x] only string

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
    rec_mo_id 0..1 and
    rec_dy 0..1 and
    cs 0..1 and
    ship 0..1 and
    sysrej 0..1 and
    intrej 0..1 and
    ethnicity 0..1 and
    race 0..1 and
    underlyingcauseofdeath 0..1 and
    recordcauseofdeath 0..1 and
    entityaxiscode 0..1 and
    manner 0..1 and
    injpl 0..1 and
    otherspecifiedplace 0..1


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