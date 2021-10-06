RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

CodeSystem: DeathMessageHeaderURICS
Id: VRDR-DeathMessageHeaderURI-cs
Title: "DeathMessageHeader URI Values"
Description: "DeathMessageHeader URI Values"
* #http://nchs.cdc.gov/vrdrsubmission "VRDR Submission" "Indicates that the payload is aninitial (or retransmission of an unacknowledged) submission of a VRDR Death Certificate
Document"
* #http://nchs.cdc.gov/vrdrsubmissionupdateindicatesthatthepayload "VRDR Update" "Indicates thisis  an  update  to  a  previously  acknowledged  submission  of  a  VRDR  DeathCertificate Document "

ValueSet: DeathMessageHeaderURIVS
Id: VRDR-DeathMessageHeaderURI-vs
Title: "DeathMessageHeader URI Values"
Description: "DeathMessageHeader URI Values"
* include codes from system DeathMessageHeaderURICS


Profile:  DeathMessageHeader
Parent: MessageHeader
Id: VRDR-DeathMessageHeader
Title:  "Death Message Header"
* eventUri from DeathMessageHeaderURIVS
* destination MS
* source MS
* focus only Reference(DeathCertificateDocument)
//•id is unique for every message.  The same value should be re-used for retransmissions ofthe same message.•eventUriidentifies  the  type  of  message,
//specific  values  for  each  type  of  message  areprovided in the subsections describing that message.•destination.endpointidentifies  the  destination
//FHIR  messaging  endpoint  and  isfixed tohttp://nchs.cdc.gov/vrdrsubmission(a URI that uniquely identifiesthe NCHS death record submission service) for
//messages sent to NVSS. Note that this URIdoes not need to be resolvable and is only used for logical identification purposes.•source.endpointidentifies
//the  source  FHIR  messaging  endpoint  and  is  fixed  tohttp://nchs.cdc.gov/vrdrsubmission(a  URI  that  uniquely  identifies  theNCHS  death  record
//submission  service)  for  messages  originating  from  NVSS.  Likedestination.endpoint,  this  URI  is  a  logical  identifier  and  does  not  need  to
//beresolvable.•focusreferences the payload of the message, all messages will include a reference to theRecordentry, some messages include additional references
//to other entries and these aredefined in the following subsections.


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
