RuleSet: boilerplate
// * ^status = #draft
// * ^experimental = false
// * ^date = "2022-02-08"
* ^publisher = "Health Level Seven International"
// * ^contact[0].name = "HL7 International - Public Health"
// * ^contact[=].telecom.system = #url
// * ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pher"
// * ^contact[+].name = "Cynthia Bush, Health Scientist (Informatics), CDC/National Center for Health Statistics"
// * ^contact[=].telecom.system = #email
// * ^contact[=].telecom.value = "pdz1@cdc.gov"
// * ^contact[+].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions"
// * ^contact[=].telecom.system = #email
// * ^contact[=].telecom.value = "abdulmalik.shakir@hi3solutions.com"
// * ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
// * ^jurisdiction.text = "US Realm"


RuleSet: Extension(name, min, max, short, def, class)
* extension contains {name} {min}..{max}
* extension[{name}] ^short = "{short}"
* extension[{name}] ^definition = "{def}"
* extension[{name}].value[x] only {class}

RuleSet: CodingExtension(name, min, max, short, def, valueset)
* insert Extension({name},{min},{max},{short},{def}, Coding)
* extension[{name}].value[x] from {valueset} (required)

RuleSet: BundleSlice(name, min, max, short, def, class)
* entry contains {name} {min}..{max}
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}
//* entry[{name}].resource.meta.profile = Canonical({class})

RuleSet: RequireMetaProfile(profile)
// * meta 1..1
// * meta.profile 1..*
// * meta.profile ^slicing.discriminator.type = #pattern
// * meta.profile ^slicing.discriminator.path = "$this"
// * meta.profile ^slicing.rules = #open
// * meta.profile ^slicing.ordered = false
// * meta.profile ^slicing.description = "Slice based on value"
// * meta.profile contains supportedProfile 1..1
// * meta.profile[supportedProfile] = Canonical({profile})
// this now does nothing
* hello

RuleSet: AddMetaProfile(profile)
//* meta.profile = Canonical({profile})
// this does nothing
* hello

RuleSet: SNOMEDCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

RuleSet: LOINCCopyright
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

RuleSet: ParameterSlicing
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: ParameterName(name,short,def)
* parameter contains {name} 0..1
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"
* parameter[{name}].extension 0..0

RuleSet: ParameterNameType(name, type, short, def)
* insert ParameterName({name},{short}, {def})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0
* parameter[{name}].extension 0..0

RuleSet: obscodecomponent(code, valueSet)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = ComponentCS#{code}
* component[{code}].value[x] 1..1
* component[{code}].value[x] only CodeableConcept
* component[{code}] ^short = "{code}"
* component[{code}].value[x] from {valueSet}

RuleSet: primobscodecomponent(code, type)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = ComponentCS#{code}
* component[{code}].value[x] 1..1
* component[{code}].value[x] only {type}
* component[{code}] ^short = "{code}"

RuleSet: NCHSObservationCommon
* subject only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
* subject ^short = "Decedent"
// * effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date/Time when added to death record"

RuleSet: addentry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

RuleSet: addentryComposition(type, id)
* entry[+].reference = "{type}/{id}"

RuleSet: addNamedEntryComposition(name, type, id)
* entry[{name}][+].reference = "{type}/{id}"

RuleSet: addReferenceComposition (field, type, id)
* {field}.reference = "{type}/{id}"