ValueSet: AdministrativeGenderVS
Id: vrdr-administrative-gender-vs
Title: "Administrative Gender PHVS_Sex_MFU"
Description: "The gender of a person used for administrative purposes.  This uses codes that are aligned with USCore and VRCL.

Mapping to IJE codes [here](ConceptMap-AdministrativeGenderCM.html)."
* ^experimental = false
* $v3-AdminGender#F "Female"
* $v3-AdminGender#M "Male"
* $v3-NullFlavor#UNK "Unknown"


ValueSet: AdministrativeGenderOldVS
Id: vrdr-administrative-gender-old-vs
Title: "Administrative Gender PHVS_Sex_MFU - Old"
Description: "The gender of a person used for administrative purposes. This valueset was used in STU2.2.

Mapping to IJE codes [here](ConceptMap-AdministrativeGenderOldCM.html)."
* ^experimental = false
* $admingender#male "Male"
* $admingender#female "Female"
* $admingender#unknown "unknown"


ValueSet: AdministrativeGenderMaxVS
Id: ValueSet-administrative-gender-max-vs
Title: "Administrative Gender - Max"
Description: "This valueset contains codes to represent gender. It expands on the [AdministrativeGenderVS] by including the gender codes used
in STU2.2([AdministrativeGenderOldVS])for backward compatibility. "
* ^experimental = false
* include codes from valueset AdministrativeGenderVS
* include codes from valueset AdministrativeGenderOldVS
