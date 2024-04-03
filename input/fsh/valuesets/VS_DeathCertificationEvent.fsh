ValueSet: DeathCertificationEventVS
Id: vrdr-death-certification-event-vs
Title: "Event Code for Death Certificate Composition"
Description: "The code used for Event.code for the Death Certificate Composition"
* ^experimental = false
* insert SNOMEDCopyright
* $sct#307930005 "Death certificate (record artifact)"


ValueSet: DeathCertificationEventMaxVS
Id: vrdr-death-certification-event-max-vs
Title: "Event Code for Death Certificate Composition - Max"
Description: "The maximum valueset for Event.code for Death Certificate Composition.  Includes an inactive but valid code used in STU2 "
* ^experimental = false
* insert SNOMEDCopyright
* include codes from valueset DeathCertificationEventVS
* $sct#103693007 "Diagnostic procedure (procedure)"
