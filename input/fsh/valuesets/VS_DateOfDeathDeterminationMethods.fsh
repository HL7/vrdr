ValueSet: DateOfDeathDeterminationMethodsVS
Id: vrdr-date-of-death-determination-methods-vs
Title: "Date of Death Determination Methods Value Set"
Description: "Date of Death Determination Methods Value Set. The method of date of death determination is not used for the Death Record submission process.
The binding to this value set is included for compatibility with the Medicolegal Death Investigation ([MDI](https://build.fhir.org/ig/HL7/fhir-mdi-ig/)) Implementation Guide.  The valueset only
includes the values used by MDI, but is bound [extensibly](https://hl7.org/fhir/R4/terminologies.html#extensible).  If a jurisdiction chooses to use this field, and requires
additional values (e.g., 'presumed'), these values can be used while remaining in full conformance with the VRDR IG."
* DateOfDeathDeterminationMethodsCS#exact "Exact"
* DateOfDeathDeterminationMethodsCS#approximate "Approximate"
// * DateOfDeathDeterminationMethodsCS#presumed "Presumed Date of Death"
* DateOfDeathDeterminationMethodsCS#court-appointed "Court Appointed"
* ^experimental = false