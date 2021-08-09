CDCs National Center for Health Statistics is working closely with Federal, State, and local partners to take a fresh look at how mortality data are gathered, stored, and exchanged across the United States. They are focused on adopting best practices for information exchange that lessen the burden on data providers (e.g., vital records offices, medical examiner and coroner offices, toxicology labs) while providing a seamlessly automated data feed to public health and public safety data requestors. 

To help make the mortality data ecosystem more connected, adaptable, and robust, they have chosen to leverage modern technologies and approaches, such as RESTful based APIs and HL7s Fast Healthcare Interoperability Resources (FHIR) standard.

This implementation guide is an initial step to help define a common set of protocols and practices that developers can rely on to enhance their existing products and build solutions to help make mortality data flow more seamlessly.

# **Change History **

**August 2021 STU2 pre-ballot changes**

* Added patient-birthPlace extension to resource profile Decedent
* Modified the terminology binding for the contact.relationship element in the resource profile Decedent to match the HL7v2.6 specification
* Modified resource profile Cause Of Death Condition to use USCoreCondition as its base profile and include the element condition.category 
* Modified Cause Of Death Condition Example to include the element condition.category 
* Modified resource profile Condition Contributing To Death to use USCoreCondition as its base profile and include the element condition.category 
* Modified Condition Contributing To Death Example to include the element condition.category
* Added a section on recent change history to the background page.
*	Added Extension - Date Part Absent Reason from the vital records common library IG
* Added Extension - Date Part Absent Reason to VRDR Decedent.birthdate
* Added Extension - Date Part Absent Reason to VRDR Death Date.valueDateTime
* Corrected the display name for LOINC code ‘81956-5’ - Date and time of death
* Modified the cardinality of Resource Profile: Cause of Death Pathway entry from (0..*) to (1..*)
* Added Observation.dataAbsentReason to Resource Profile: Decedent's age
* Added Observation.dataAbsentReason to Resource Profile: Birth Record Identifier
* Added constraint on VRDR Decedent.address.city to require it be a five-digit numeric value greater than zero and less than 100000.
* Modified value set bindings for	VRDR Decedent	.address.district - PHVS_DivisionVitalStatistics__County
* Modified value set bindings for	VRDR Decedent[Residence].address.country - PHVS_DecedentResident_County
* Modified value set bindings for	VRDR Decedent[Birthplace].address.country - PHVS_DecedentBirthplace_County
* Modified value set bindings for	VRDR Death Location.address.district - PHVS_DivisionVitalStatistics__County
* Modified value set bindings for	VRDR Decedent Military Service	.valueCodeableConcept - PHVS_YesNoUnknown_CDC
* Modified value set bindings for	VRDR Examiner Contacted.valueCodeableConcept - PHVS_YesNoUnknown_CDC*
*	Added position.longitude and position.latitude to Resource Profile: Death Location
*	Added position.longitude and position.latitude to Resource Profile: Injury Location
*	Changed URL for Extension: LocationJurisdictionId to http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id
* Changed cardinality on Location-Jurisdiction-Id in Resource Profile: Death Location to 1..1
*	Constrained Extension: Observation Location.value[x] to Reference(Location)
*	Updated instance examples of modified resource profiles to reflect changes
* Added requirement for use of meta.profile to identify the profile version to which the resource instance complies. 
*	Added a dependency to the vital records common library IG
* Changed the name of the guide from Vital Records Mortality and Morbidity Reporting FHIR Implementation Guide to Vital Records Death Reporting FHIR Implementation Guide
*	Changed author from Hetty Khan to Cynthia Bush
* Changed release label from STU 1 to STU 2 and version from 1.0.0 to 1.1.0


