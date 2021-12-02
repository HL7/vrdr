Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender
Alias: $statesVS = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $statesCS = https://www.usps.com/
Alias: $provinces = http://canadapost.ca/CodeSystem/ProvinceCodes
Alias: $maritalStatus = http://hl7.org/fhir/ValueSet/marital-status
Alias: $roleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $degreeLicenseCertificateV2 = http://terminology.hl7.org/CodeSystem/v2-0360

ValueSet: USStatesAndTerritoriesVS
Id: USStates-Territories-VS
Title: "US States, Territories Value Set"
Description: "2 Letter States and Territories Value Set"
* ^status = #active
* ^version = "1.0.0"
* include codes from valueset $statesVS
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA

ValueSet: StatesTerritoriesAndProvincesVS
Id: States-TerritoriesProvinces-VS
Title: "States, Territories and Provinces Value Set"
Description: "2 Letter States and Provinces Value Set"
* ^status = #active
* ^version = "1.0.0"
* include codes from valueset USStatesAndTerritoriesVS
* include codes from valueset CanadaProvincesVS
* $v3-NullFlavor#UNK

ValueSet: CanadaProvincesVS
Id: Canada-Provinces-VS
Title: "Canadian Provinces Value Set"
Description: "2 Letter Candadian Provinces Value Set"
* $provinces#AB	"Alberta"
* $provinces#BC	"British Columbia"
* $provinces#MB	"Manitoba"
* $provinces#NB	"New Brunswick"
* $provinces#NL	"Newfoundland and Labrador"
* $provinces#NS	"Nova Scotia"
* $provinces#NT	"Northwest Territories"
* $provinces#NU	"Nunavut"
* $provinces#ON	"Ontario"
* $provinces#PE	"Prince Edward Island"
* $provinces#QC	"Quebec"
* $provinces#SK	"Saskatchewan"
* $provinces#YT	"Yukon"


CodeSystem: VRDRJurisdictionsCS
Id: VRDR-Jurisdictions
Title: "VRDR Jurisdictions"
Description: "VRDR Jurisdictions that are not US States or Territories"
* #YC "New York City" "New York City"

ValueSet: VRDRJurisdictionVS
Id: Jurisdictions-VS
Title: "VRDR Jurisdictions Value Set"
Description: "2 Letter States and Provinces Value Set"
* include codes from valueset USStatesAndTerritoriesVS
* VRDRJurisdictionsCS#YC "New York City"

Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender

ValueSet: YesNoUnknownVS
Id: vrdr-YesNoUnknown
Title: "Yes No Unknown  Value Set"
Description: "Yes No Unknown Valueset built HL7 Expanded Yes/No Codesystem"
* ^status = #active
* ^version = "1.0.0"
* $v2-0532#Y "Yes"
* $v2-0532#N "No"
* $v2-0532#UNK "Unknown"

ValueSet: YesNoNotApplicableVS
Id: vrdr-YesNoNotApplicable
Title: "Yes No Not Applicable  Value Set"
Description: "Yes No Not Applicable Valueset built HL7 Expanded Yes/No Codesystem"
* ^status = #active
* ^version = "1.0.0"
* $v2-0532#Y "Yes"
* $v2-0532#N "No"
* $v2-0532#NA "Not Applicable"

ValueSet: AdministrativeGenderVS
Id: vrdr-administrative-gender
Title: "Administrative Gender"
Description: "Gender Valueset built HL7 Administrative Gender Codesystem.  If the 'other' value were included, this could use the standard valuesystem used by USCore http://hl7.org/fhir/R4/valueset-administrative-gender.html#4.4.1.369"
* ^status = #active
* ^version = "1.0.0"
* $admingender#male "male"
* $admingender#female "female"
* $admingender#unknown "unknown"


ValueSet: PlaceOfDeathVS
Id: vrdr-PlaceOfDeath
Title: "Place of Death VS -- PHVS_PlaceOfDeath_NCHS"
Description: "PHVS_PlaceOfDeath_NCHS"
* $sct#63238001 "Hospital Dead on Arrival"
* $sct#440081000124100 "Decedent's Home"
* $sct#440071000124103 "Hospice"
* $sct#16983000 "Hospital Inpatient"
* $sct#450391000124102  "Death in emergency Room/Outpatient"
* $sct#450381000124100 "Death in nursing home/Long term care facility"
* $v3-NullFlavor#OTH "other"
* $v3-NullFlavor#UNK "unknown"

ValueSet: MaritalStatusVS
Id: vrdr-MaritalStatus
Title: "Marital Status VS -- PHVS_MaritalStatus_NCHS"
Description: "PHVS_MaritalStatus_NCHS"
* include codes from system $v3-MaritalStatus
* exclude $v3-MaritalStatus#I
* exclude $v3-MaritalStatus#L
* exclude $v3-MaritalStatus#P
* exclude $v3-MaritalStatus#T
* exclude $v3-NullFlavor#UNK

ValueSet: RelatedPersonRelationshipTypeVS
Id: vrdr-RelatedPersonRelationshipType
Title: "RelatedPerson Relationship type VS -- RelatedPersonRelationshipType"
Description: "RelatedPersonRelationshipType"
* $roleCode#CHLDADOPT	"adopted child"
* $roleCode#DAUADOPT	"adopted daughter"
* $roleCode#SONADOPT "adopted son"
* $roleCode#ADOPTF "adoptive father"
* $roleCode#ADOPTM "adoptive mother"
* $roleCode#ADOPTP "adoptive parent"
* $roleCode#AUNT "aunt"
* $roleCode#BRO "brother"
* $roleCode#BROINLAW "brother-in-law"
* $roleCode#CHILD "child"
* $roleCode#CHLDINLAW "child-in-law"
* $roleCode#COUSN "cousin"
* $roleCode#DAUC "daughter"
* $roleCode#DAUINLAW "daughter in-law"
* $roleCode#DOMPART "domestic partner"

ValueSet: DecedentEducationLevelVS
Id: vrdr-EducationLevel
Title: "Education Level VS "
Description: "EducationLevel"
* include codes from system $HL7_EducationLevelCS
* exclude $HL7_EducationLevelCS#PB
* $v3-NullFlavor#UNK "unknown"

ValueSet: DecedentEducationLevelAltVS
Id: vrdr-EducationLevel-alt
Title: "Education Level VS - Alternative "
Description: "EducationLevel - Alternative"
* include codes from system $HL7_EducationLevelCS
* exclude $HL7_EducationLevelCS#PB
* $HL7_EducationLevelCS#ELEM
* $HL7_EducationLevelCS#SEC
* $HL7_EducationLevelCS#HS
* $HL7_EducationLevelCS#SCOL
* $degreeLicenseCertificateV2#AA
* $degreeLicenseCertificateV2#BA
* $degreeLicenseCertificateV2#MA
* $HL7_EducationLevelCS#POSTG
* $v3-NullFlavor#UNK "unknown"
