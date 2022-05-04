Instance: EducationLevelCM
InstanceOf: ConceptMap
// Id: vrdr-education-level-cm
Usage: #definition
* insert ConceptMapIntro(EducationLevel, EducationLevelVS)
* insert AddGroup("IJE",$HL7_EducationLevelCS)
* insert MapConcept( #1,  "8th grade or less",#ELEM, "Elementary School")
* insert MapConcept( #2,  "9th through 12th grade; no diploma",#SEC, "Some secondary or high school education")
* insert MapConcept( #3,  "High School Graduate or GED Completed",#HS, "High School or secondary school degree complete")
* insert MapConcept( #4,  "Some college credit\, but no degree", #SCOL, "Some College Education")
* insert MapConcept( #8,  "Doctorate Degree or Professional Degree",#POSTG, "Post Graduate Education")
* insert AddGroup("IJE",$degreeLicenseCertificateV2)
* insert MapConcept( #5,  "Associate Degree",#AA, "Associate's or technical degree complete")
* insert MapConcept( #6,  "Bachelor's Degree",#BA, "College or baccalaureate degree complete")
* insert MapConcept( #7,  "Master's Degree",#MA, "Master's Degree")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #9,  "Unknown",#UNK, "Unknown")
