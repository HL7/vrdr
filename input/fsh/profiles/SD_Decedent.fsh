Profile: Decedent
Parent: PatientVitalRecords
Id: vrdr-decedent
Title: "Decedent"
Description: "Decedent (PatientVitalRecords)"
* insert RequireMetaProfile(Decedent)
* extension contains
    NVSSSexAtDeath named NVSS-SexAtDeath 0..1 and
    SpouseAlive named Spouse-Alive 0..1 //and
//    $patient-birthPlace named Patient-BirthPlace 0..1
* extension[NVSS-SexAtDeath] ^short = "NVSS Sex at Death"
* extension[Spouse-Alive] ^short = "Spouse Alive?"
* extension[birthPlace] ^short = "Decedent birthplace"
  * valueAddress
    * state from ValueSetStatesTerritoriesAndProvincesVitalRecords  (required)
    * state ^short = "Birth state"
    * country ^short = "Birth country"
    * city ^short = "Birth city"
      * extension[cityCode] ^short = "Birth city code"
* identifier 1..*
* identifier[SSN] ^short = "Decedent's Social Security Number"  // defined in USCore Patient
* identifier contains SB 0..1 
* identifier[SB].type = $v2-0203#SB
* identifier[SB] ^short = "**Deprecated** Decedent's Social Security Number for Compatibility.  Use SSN."
* name 1..*
* birthDate ^short = "Date of Birth"
* address ^short = "Decedent's Residence"
  * line ^short = "Street Address"
  * district 
    * ^short = "County"
    * extension[districtCode] ^short = "County code"
  * city 
    * ^short = "City"
    * extension[cityCode] ^short = "City Code"
  * postalCode ^short = "Postal Code"
  * country ^short = "Country"
  * extension[predir] ^short = "Predirectional"
  * extension[postdir] ^short = "Postdirectional"
  * extension[stname] ^short = "Street Name"
  * extension[stnum] ^short = "Street Number"
  * extension[stdesig] ^short = "Street Designator"
  * extension[unitnumber] ^short = "Unit Number"
  * extension[withinCityLimitsIndicator] ^short = "indicates whether or not an address is within city limits"
* maritalStatus only CodeableConcept
* maritalStatus from ValueSetMaritalStatusVitalRecords (required)  // MARITAL
* maritalStatus.text ^short = "Marital Description"
* maritalStatus.extension contains
    BypassEditFlag named bypassEditFlag 0..1 // MARITAL_BYPASS
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept from EditBypass0124VS (required)
* maritalStatus.extension[bypassEditFlag].value[x] only CodeableConcept
* contact ^short = "Informant information"
  * relationship.text ^short = "Informant's relationship"
* contact.relationship 0..1
* contact.relationship ^short = "Informant Relationship (INFORMRELATE)"
* contact.relationship only CodeableConcept
// * contact.relationship from RelatedPersonRelationshipTypeVS (required)
* contact.relationship.text ^short = "Informant Relationship (INFORMRELATE) - first 30 characters will be used"
* deceasedBoolean = true  // Boolean only.  Death date should be passed in DeathDate Observation.
* address.state ^short = "State/Jurisdiction of residence.  Provide both state and jurisdiction if different."
* address.state.extension contains 
    ExtensionLocationJurisdictionIdVitalRecords named residenceJurisdictionId 0..1  // jurisdiction_id  
* name 
  * family ^short = "Family name (surname)"
  * given ^short = "Given names"
  * use ^short = "The use of a human name"
  * suffix ^short = "Surname suffix"
  * text ^short = ""

