
ValueSet: PlaceOfInjuryVS
Id: vrdr-place-of-injury-vs
Title: "Place of Injury ValueSet"
Description: "Place of Injury from NCHS TRX Format.  THis contains all of the codes from https://loinc.org/LL1051-3/ except for LA14087-3 (Public Institution).

Mapping to IJE codes [here](ConceptMap-PlaceOfInjuryCM.html)."
* insert LOINCCopyright
* $loinc#LA14084-0 "Home"
* $loinc#LA14085-7 "Residential institution"
* $loinc#LA14086-5 "School"
* $loinc#LA14088-1 "Sports or recreational area"
* $loinc#LA14089-9 "Street or highway"
* $loinc#LA14090-7 "Trade or service area"
* $loinc#LA14091-5 "Industrial or construction area"
* $loinc#LA14092-3 "Farm"
* $loinc#LA14093-1 "Unspecified"
* $v3-NullFlavor#OTH "Other"
* ^experimental = false

ValueSet: PlaceOfInjuryOtherVS
Id: vrdr-place-of-injury-other-vs
Title: "Place of Injury - Other ValueSet"
Description: "Place of Injury from NCHS SuperMicar Format.  This provides additional detail when the TRX code is 'Other'.

Mapping to SuperMicar codes [here](ConceptMap-PlaceOfInjuryOtherCM.html)."

* SuperMicarPlaceOfInjuryCS#D "Military Residence"
* SuperMicarPlaceOfInjuryCS#E "Hospital"
* SuperMicarPlaceOfInjuryCS#H "Garage/Warehouse"
* SuperMicarPlaceOfInjuryCS#J "Mine/Quarry"
* SuperMicarPlaceOfInjuryCS#L "Public Recreation Area"
* SuperMicarPlaceOfInjuryCS#M "Institutional Recreation Area"
* SuperMicarPlaceOfInjuryCS#P "Other specified place"
* ^experimental = false

