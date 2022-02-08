Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender
Alias: $statesVS = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $statesCS = https://www.usps.com/
Alias: $provinces = http://canadapost.ca/CodeSystem/ProvinceCodes
Alias: $maritalStatus = http://hl7.org/fhir/ValueSet/marital-status
Alias: $roleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $contactRole = http://terminology.hl7.org/CodeSystem/v2-0131
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
Description: "PHVS_RelatedPersonRelationshipType_NCHS"
* $roleCode#CHLDADOPT "adopted child"
* $roleCode#DAUADOPT "adopted daughter"
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
* $contactRole#C "Emergency Contact"
* $contactRole#E "Employer"
* $roleCode#EXT "extended family member"
* $roleCode#FAMMEMB "family member"
* $roleCode#FTH "father"
* $roleCode#FTHINLAW "father-in-law"
* $contactRole#F "Federal Agency"
* $roleCode#FMRSPS "former spouse"
* $roleCode#CHLDFOST "foster child"
* $roleCode#DAUFOST "foster daughter"
* $roleCode#FTHFOST "foster father"
* $roleCode#MTHFOST "foster mother"
* $roleCode#PRNFOST "foster parent"
* $roleCode#SONFOST "foster son"
* $roleCode#FTWIN "fraternal twin"
* $roleCode#FTWINBRO "fraternal twin brother"
* $roleCode#FTWINSIS "fraternal twin sister"
* $roleCode#GESTM "gestational mother"
* $roleCode#GRNDCHILD "grandchild"
* $roleCode#GRNDDAU "granddaughter"
* $roleCode#GRFTH "grandfather"
* $roleCode#GRMTH "grandmother"
* $roleCode#GRPRN "grandparent"
* $roleCode#GRNDSON "grandson"
* $roleCode#GGRFTH "great grandfather"
* $roleCode#GGRMTH "great grandmother"
* $roleCode#GGRPRN "great grandparent"
* $roleCode#HBRO "half-brother"
* $roleCode#HSIB "half-sibling"
* $roleCode#HSIS "half-sister"
* $roleCode#HUSB "husband"
* $roleCode#ITWIN "identical twin"
* $roleCode#ITWINBRO "identical twin brother"
* $roleCode#ITWINSIS "identical twin sister"
* $roleCode#INLAW "inlaw"
* $contactRole#I "Insurance Company"
* $roleCode#MAUNT "maternal aunt"
* $roleCode#MCOUSN "maternal cousin"
* $roleCode#MGRFTH "maternal grandfather"
* $roleCode#MGRMTH "maternal grandmother"
* $roleCode#MGRPRN "maternal grandparent"
* $roleCode#MGGRFTH "maternal great-grandfather"
* $roleCode#MGGRMTH "maternal great-grandmother"
* $roleCode#MGGRPRN "maternal great-grandparent"
* $roleCode#MUNCLE "maternal uncle"
* $roleCode#MTH "mother"
* $roleCode#MTHINLAW "mother-in-law"
* $roleCode#NBRO "natural brother"
* $roleCode#NCHILD "natural child"
* $roleCode#DAU "natural daughter"
* $roleCode#NFTH "natural father"
* $roleCode#NFTHF "natural father of fetus"
* $roleCode#NMTH "natural mother"
* $roleCode#NMTHF "natural mother of fetus"
* $roleCode#NPRN "natural parent"
* $roleCode#NSIB "natural sibling"
* $roleCode#NSIS "natural sister"
* $roleCode#SON "natural son"
* $roleCode#NBOR "neighbor"
* $roleCode#NEPHEW "nephew"
* $contactRole#N "Next-of-Kin"
* $roleCode#NIECE "niece"
* $roleCode#NIENEPH "niece/nephew"
* $contactRole#O "Other"
* $roleCode#PRN "parent"
* $roleCode#PRNINLAW "parent in-law"
* $roleCode#PAUNT "paternal aunt"
* $roleCode#PCOUSN "paternal cousin"
* $roleCode#PGRFTH "paternal grandfather"
* $roleCode#PGRMTH "paternal grandmother"
* $roleCode#PGRPRN "paternal grandparent"
* $roleCode#PGGRFTH "paternal great-grandfather"
* $roleCode#PGGRMTH "paternal great-grandmother"
* $roleCode#PGGRPRN "paternal great-grandparent"
* $roleCode#PUNCLE "paternal uncle"
* $roleCode#ROOM "Roommate"
* $roleCode#ONESELF "self"
* $roleCode#SIB "sibling"
* $roleCode#SIBINLAW "sibling in-law"
* $roleCode#SIGOTHR "significant other"
* $roleCode#SIS "sister"
* $roleCode#SISINLAW "sister-in-law"
* $roleCode#SONC "son"
* $roleCode#SONINLAW "son in-law"
* $roleCode#SPS "spouse"
* $contactRole#S "State Agency"
* $roleCode#STPCHLD "step child"
* $roleCode#STPPRN "step parent"
* $roleCode#STPSIB "step sibling"
* $roleCode#STPBRO "stepbrother"
* $roleCode#STPDAU "stepdaughter"
* $roleCode#STPFTH "stepfather"
* $roleCode#STPMTH "stepmother"
* $roleCode#STPSIS "stepsister"
* $roleCode#STPSON "stepson"
* $roleCode#TWIN "twin"
* $roleCode#TWINBRO "twin brother"
* $roleCode#TWINSIS "twin sister"
* $roleCode#UNCLE "uncle"
* $contactRole#U "Unknown"
* $roleCode#FRND "unrelated friend"
* $roleCode#WIFE "wife"

ValueSet: DecedentEducationLevelVS
Id: vrdr-EducationLevel
Title: "Education Level VS "
Description: "EducationLevel"
* $HL7_EducationLevelCS#ELEM
* $HL7_EducationLevelCS#SEC
* $HL7_EducationLevelCS#HS
* $HL7_EducationLevelCS#SCOL
* $degreeLicenseCertificateV2#AA
* $degreeLicenseCertificateV2#BA
* $degreeLicenseCertificateV2#MA
* $HL7_EducationLevelCS#POSTG
* $v3-NullFlavor#UNK "unknown"

ValueSet: DecedentEducationLevelAltVS
Id: vrdr-EducationLevel-alt
Title: "Education Level VS - Alternative  "
Description: "EducationLevel - Alternative"
* $HL7_EducationLevelCS#ELEM "Elementary School"
* $HL7_EducationLevelCS#SEC
* $HL7_EducationLevelCS#HS
* $HL7_EducationLevelCS#SCOL
* $degreeLicenseCertificateV2#AA
* $degreeLicenseCertificateV2#BA
* $degreeLicenseCertificateV2#MA
* $HL7_EducationLevelCS#POSTG
* $v3-NullFlavor#UNK "unknown"
