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
* extension contains {name} {min}..{max} MS
* extension[{name}] ^short = "{short}"
* extension[{name}] ^definition = "{def}"
* extension[{name}].value[x] only {class}

RuleSet: CodingExtension(name, min, max, short, def, valueset)
* insert Extension({name},{min},{max},{short},{def}, Coding)
* extension[{name}].value[x] from {valueset} (required)

RuleSet: BundleSlice(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
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

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"
