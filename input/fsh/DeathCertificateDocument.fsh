Profile: DeathCertificateDocument
Parent: Bundle
Id: VRDR-Death-Certificate-Document
Title: "VRDR Death Certificate Document"
Description: "The Death Certificate Document profile is a bundle of resources comprising the death certificate composition. The Death Certificate Document builds upon the FHIR Document resource."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2020-08-18T06:29:51.027+00:00"
* ^meta.source = "#TRof2eLh1VCPPrNl"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* identifier 1..1
* identifier ^short = "identifier"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier ^comment = "NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). These concepts can be pulled directly from existing elements of the VRDR IG: the year of death comes from the observation value in the DeathDate resource, the jurisdiction of death come from the location alias in the NationalReportingJurisdiction resource, and the death certificate number assigned by the jurisdiction comes from the identifier specified in the DeathCertification resource."
* type 1..1
* type only code
* type = #document (exactly)
* type ^short = "type"
* entry 1..*
* entry only BackboneElement
* entry ^short = "entry"
* entry.resource 1..1
* entry.resource ^short = "resource"
* entry.resource ^definition = "This entry SHALL contain exactly one [1..1] resource=\"VRDR Death Certificate\" (CONF:4393-360)."

Instance: 7a4613cc-b306-49b2-a428-9f8e67e67a85
InstanceOf: DeathCertificateDocument
Title: "Death Certificate Document Example"
Description: "An instance example of the VRDR-Death-Certificate-Document resource profile."
Usage: #example
* meta.versionId = "39"
* meta.lastUpdated = "2020-08-12T18:59:34.898+00:00"
* meta.source = "#OlEHlfWnqGy5aapi"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "7a4613cc-b306-49b2-a428-9f8e67e67a85"
* type = #document
* timestamp = "2017-12-11T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:54fd9b4c-7633-4e34-bf6b-6fbe9d48fd30"
* entry[=].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-1
* entry[+].fullUrl = "urn:uuid:Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* entry[=].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-2
* entry[+].fullUrl = "Practitioner/urn:cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* entry[=].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-3
* entry[+].fullUrl = "urn:uuid:Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* entry[=].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-4

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-1
InstanceOf: Composition
Usage: #inline
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(Patient/51b806c8-566f-463e-8783-9fbf6be8161d)
* date = "2017-12-11T14:30:00+01:00"
* author = Reference(Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d)
* title = "Death Certificate"
* attester.mode = #legal
* attester.time = "2017-12-11T14:30:00+01:00"
* attester.party = Reference(Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d)
* event.code = $sct#103693007 "Diagnostic procedure (procedure)"
* event.detail = Reference(Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73)

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-2
InstanceOf: Patient
Usage: #inline
* id = "51b806c8-566f-463e-8783-9fbf6be8161d"
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1586-7 "Shoshone"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "123456789"
* name[0].use = #official
* name[=].family = "Last"
* name[=].given[0] = "Example"
* name[=].given[+] = "Something"
* name[=].given[+] = "Middle"
* name[=].suffix = "Jr."
* name[+].use = #nickname
* name[=].family = "LastNameAlias"
* name[=].given[0] = "FirstNameAlias"
* name[=].given[+] = "MiddleAlias"
* name[=].suffix = "Jr."
* gender = #male
* birthDate = "1941-02-19"
* address.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator"
* address.extension.valueCoding = $v2-0136#N "No"
* address.line[0] = "101 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* maritalStatus = $v3-MaritalStatus#S "Never Married"

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-3
InstanceOf: Practitioner
Usage: #inline
* id = "cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "2233445511"
* name.use = #official
* name.family = "Last"
* name.given[0] = "Doctor"
* name.given[+] = "Middle"
* name.suffix = "Jr."
* address.line[0] = "11 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* qualification.identifier.value = "789123456"
* qualification.code = $sct#309343006 "Physician"

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-4
InstanceOf: Procedure
Usage: #inline
* id = "219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* identifier.value = "aabcde9876543210"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure (procedure)"
* code = $sct#308646001 "Death certification"
* subject = Reference(Patient/51b806c8-566f-463e-8783-9fbf6be8161d)
* performedDateTime = "2019-01-29T16:48:06-05:00"
* performer.function = $sct#309343006 "Physician"
* performer.actor = Reference(Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d)