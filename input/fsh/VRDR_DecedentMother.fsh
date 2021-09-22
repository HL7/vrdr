Profile: VRDR_DecedentMother
Parent: RelatedPerson
Id: VRDR-Decedent-Mother
Title: "Decedent Mother"
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-16T23:25:47.997+00:00"
* ^meta.source = "#K3ByEHNHauqovaBo"
* ^status = #draft
* ^experimental = false
* ^publisher = "CAPH"
* patient 1..1
* patient only Reference(Decedent)
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#MTH "mother" (exactly)
* name 1..1
* address 0..1

Instance: 89ababc6-8c2a-4e76-9f53-8677822f54a9
InstanceOf: VRDR_DecedentMother
Title: "Decedent Mother Example"
Description: "An instance example of the VRDR-Decedent-Mother resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:49:29.537+00:00"
* meta.source = "#Ig5XrcHuNGzpbSuz"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship = $v3-RoleCode#MTH "mother"
* name.family = "Maiden"
* name.given[0] = "Mother"
* name.given[+] = "Middle"
* name.suffix = "Dr."