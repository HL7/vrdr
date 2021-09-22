Profile: VRDR_AutopsyPerformedIndicator
Parent: Observation
Id: VRDR-Autopsy-Performed-Indicator
Title: "VRDR Autopsy Performed Indicator"
* ^meta.versionId = "28"
* ^meta.lastUpdated = "2020-06-10T22:41:15.876+00:00"
* ^meta.source = "#jU7oMgwSEIRspNcr"
* ^version = "1.0"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"\"final\"\" (CONF:4393-412)."
* code 1..1
* code only CodeableConcept
* code = $loinc#85699-7 "Autopsy was performed" (exactly)
* code ^short = "code"
* code ^definition = "SHALL contain exactly one [1..1] code=\"85699-7\" Autopsy was performed (CONF:4393-411)."
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* subject ^definition = "SHALL contain exactly one [1..1] subject=\"VRDR Decedent\" (CONF:4393-413)."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_2 (required)
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* value[x] ^short = "value[x]"
* value[x] ^definition = "SHALL contain exactly one [1..1] value[x], where value[x] is (CONF:4393-409)"
* value[x] ^binding.description = "PHVS_YesNoNotApplicable_NCHS"
* component 0..1
* component ^short = "component"
* component ^definition = "SHALL contain exactly one [1..1] component (CONF:4393-414)."
* component ^comment = "Autopsy Results Available"
* component.code 1..1
* component.code only CodeableConcept
* component.code = $loinc#69436-4 "Autopsy results available" (exactly)
* component.code ^short = "code"
* component.code ^definition = "This component SHALL contain exactly one [1..1] code=\"69436-4\" Autopsy results available  (CONF:4393-416)."
* component.value[x] 1..1
* component.value[x] only CodeableConcept
* component.value[x] from $ViewValueSet.action_2 (required)
* component.value[x] ^slicing.discriminator.type = #type
* component.value[x] ^slicing.discriminator.path = "$this"
* component.value[x] ^slicing.rules = #open
* component.value[x] ^short = "value[x]"
* component.value[x] ^definition = "This component SHALL contain exactly one [1..1] value[x], where value[x] is (CONF:4393-415)"
* component.value[x] ^binding.description = "PHVS_YesNoNotApplicable_NCHS"

Instance: 0db13e0d-fea6-4ef1-8285-62d761f61d88
InstanceOf: VRDR_AutopsyPerformedIndicator
Title: "Autopsy Performed Indicator Instance Example"
Description: "Instance example of the Autopsy Performed Indicator resource profile. This example indicates that an autopsy was performed and that the results of the autopsy are available."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T00:53:25.201+00:00"
* meta.source = "#brM1jqtwMAqwn7Dl"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v2-0136#Y "Yes"
* component.code = $loinc#69436-4 "Autopsy results available"
* component.valueCodeableConcept = $v2-0136#Y "Yes"