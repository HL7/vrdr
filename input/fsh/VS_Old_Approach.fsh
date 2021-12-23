Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender
Alias: $statesVS = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $statesCS = https://www.usps.com/
Alias: $provinces = http://canadapost.ca/CodeSystem/ProvinceCodes
// Alias: $maritalStatus = c
Alias: $roleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $degreeLicenseCertificateV2 = http://terminology.hl7.org/CodeSystem/v2-0360
Alias: $PH_PlaceOfOccurrence_ICD-10_WHO = urn:oid:2.16.840.1.114222.4.5.320
/*
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
*/
CodeSystem: PH_PHINVS_CDC
Id: PH_PHINVS_CDC
Title: "PH_PHINVS_CDC"
Description: "PH_PHINVS_CDC CS 2.16.840.1.114222.4.5.274"
* #PHC1448 "8th grade or less"
* #PHC1449 "9th through 12th grade; no diploma"
* #PHC1450 "High School Graduate or GED Completed"
* #PHC1451 "Some college credit, but no degree"
* #PHC1452 "Associate Degree"
* #PHC1453 "Bachelor's Degree"
* #PHC1454 "Master's Degree"
* #PHC1455 "Doctorate Degree or Professional Degree"
* #PHC1260 "Not pregnant within past year"
* #PHC1261 "Pregnant at time of death"
* #PHC1262 "Not pregnant, but pregnant within 42 days of death"
* #PHC1263 "Not pregnant, but pregnant 43 days to 1 year before death"
* #PHC1264 "Unknown if pregnant within the past year"

ValueSet: PHVS_DecedentEducationLevel_NCHS
Id: PHVS_DecedentEducationLevel_NCHS
Title: "PHVS_DecedentEducationLevel_NCHS"
Description: "Old EducationLevel"
* PH_PHINVS_CDC#PHC1448 "8th grade or less"
* PH_PHINVS_CDC#PHC1449 "9th through 12th grade; no diploma"
* PH_PHINVS_CDC#PHC1450 "High School Graduate or GED Completed"
* PH_PHINVS_CDC#PHC1451 "Some college credit, but no degree"
* PH_PHINVS_CDC#PHC1452 "Associate Degree"
* PH_PHINVS_CDC#PHC1453 "Bachelor's Degree"
* PH_PHINVS_CDC#PHC1454 "Master's Degree"
* PH_PHINVS_CDC#PHC1455 "Doctorate Degree or Professional Degree"
* $v3-NullFlavor#UNK "unknown"

// Injury Transportation



ValueSet: PHVS_MaritalStatus_NCHS
Id: PHVS_MaritalStatus_NCHS
Title: "PHVS_MaritalStatus_NCHS"
Description: "PHVS_MaritalStatus_NCHS"
* $v3-MaritalStatus#M "Married"
* $v3-MaritalStatus#A "Married but Separated"
* $v3-MaritalStatus#W "Widowed"
* $v3-MaritalStatus#D "Divorced"
* $v3-MaritalStatus#S "Never Married"
* $v3-MaritalStatus#U "Not Classifiable"

ValueSet: PHVS_MethodsOfDisposition_NCHS
Id: PHVS_MethodsOfDisposition_NCHS
Title: "PHVS_MethodsOfDisposition_NCHS"
Description: "PHVS_MethodsOfDisposition_NCHS"
* $sct#449971000124106 "Burial"
* $sct#449961000124104 "Cremation"
* $sct#449951000124101 "Donation"
* $sct#449931000124108 "Entombment"
* $sct#449941000124103  "Removal from State"
* $v3-NullFlavor#OTH "other"
* $v3-NullFlavor#UNK "unknown"


ValueSet: PHVS_PlaceOfDeath_NCHS
Id: PHVS_PlaceOfDeath_NCHS
Title: "PHVS_PlaceOfDeath_NCHS"
Description: "PHVS_PlaceOfDeath_NCHS"
* $sct#63238001 "Hospital Dead on Arrival"
* $sct#440081000124100 "Decedent's Home"
* $sct#440071000124103 "Hospice"
* $sct#16983000 "Hospital Inpatient"
* $sct#450391000124102  "Death in emergency Room/Outpatient"
* $sct#450381000124100 "Death in nursing home/Long term care facility"
* $v3-NullFlavor#OTH "other"
* $v3-NullFlavor#UNK "unknown"



ValueSet: PHVS_MannerOfDeath_NCHS
Id: PHVS_MannerOfDeath_NCHS
Title: "PHVS_MannerOfDeath_NCHS"
Description: "PHVS_MannerOfDeath_NCHS"
* $sct#38605008 "Natural"
* $sct#7878000 "Accident"
* $sct#44301001 "Suicide"
* $sct#27935005 "Homicide"
* $sct#185973002  "Pending Investigation"
* $sct#65037004 "Could not be determined"

ValueSet: PHVS_PregnancyStatus_NCHS
Id: PHVS_PregnancyStatus_NCHS
Title: "PHVS_PregnancyStatus_NCHS"
Description: "PHVS_PregnancyStatus_NCHS"
* PH_PHINVS_CDC#PHC1260 "Not pregnant within past year"
* PH_PHINVS_CDC#PHC1261 "Pregnant at time of death"
* PH_PHINVS_CDC#PHC1262 "Not pregnant, but pregnant within 42 days of death"
* PH_PHINVS_CDC#PHC1263 "Not pregnant, but pregnant 43 days to 1 year before death"
* PH_PHINVS_CDC#PHC1264 "Unknown if pregnant within the past year"
* $v3-NullFlavor#NA "Not Applicable"

ValueSet: PHVS_PlaceOfInjury_NCHS
Id: PHVS_PlaceOfInjury_NCHS
Title: "PHVS_PlaceOfInjury_NCHS"
Description: "PHVS_PlaceOfInjury_NCHS"
* $PH_PlaceOfOccurrence_ICD-10_WHO#0 "Home"
* $PH_PlaceOfOccurrence_ICD-10_WHO#1 "Residential Institution"
* $PH_PlaceOfOccurrence_ICD-10_WHO#2 "School, Other Institutions, Public Administrative Area"
* $PH_PlaceOfOccurrence_ICD-10_WHO#3 "Sports and Athletics Area"
* $PH_PlaceOfOccurrence_ICD-10_WHO#4 "Street/Highway"
* $PH_PlaceOfOccurrence_ICD-10_WHO#5 "Trade and Service Area"
* $PH_PlaceOfOccurrence_ICD-10_WHO#6 "Industrial and Construction Area"
* $PH_PlaceOfOccurrence_ICD-10_WHO#7 "Farm"
* $PH_PlaceOfOccurrence_ICD-10_WHO#8 "Other Specified Place"
* $PH_PlaceOfOccurrence_ICD-10_WHO#9  "Unspecified Place"
* $v3-NullFlavor#NI "No Information"

ValueSet: PHVS_TransportationRelationships_NCHS
Id: PHVS_TransportationRelationships_NCHS
Title: "PHVS_TransportationRelationships_NCHS"
Description: "PHVS_TransportationRelationships_NCHS"
* $sct#236320001 "Driver/Operator"
* $sct#257500003 "Passenger"
* $sct#257518000 "Pedestrian"
* $v3-NullFlavor#OTH "Other"


ValueSet: PHVS_CertifierTypes_NCHS
Id: PHVS_CertifierTypes_NCHS
Title: "PHVS_CertifierTypes_NCHS"
Description: "PHVS_CertifierTypes_NCHS"
* $sct#455381000124109 "Medical Examiner/Coroner"
* $sct#434641000124105 "Physician certified and pronounced death certificate"
* $sct#434651000124107 "Physician certified death certificate"
* $v3-NullFlavor#OTH "Other"
