// Concept maps
Instance: place-of-death
InstanceOf: ConceptMap
Usage: #definition
* name = "Place of Death"
* title = "Place of Death"
* status = #draft
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "A mapping between the FHIR and NCHS IJE Death Location Value Sets"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "for IJE to FHIR alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "To help implementers map from IJE to  FHIR Vocabulary"
// * group.source =
* group[+].target = $sct
* group[=].element[+].code = #1
* group[=].element[=].display = "Inpatient"
* group[=].element[=].target.code = #16983000
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #2
* group[=].element[=].display = "Emergency Room/Outpatient"
* group[=].element[=].target.code = #450391000124102
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #3
* group[=].element[=].display = "Dead on Arrival"
* group[=].element[=].target.code = #63238001
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #4
* group[=].element[=].display = "Decedent's Home"
* group[=].element[=].target.code = #440081000124100
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #5
* group[=].element[=].display = "Hospice Facility"
* group[=].element[=].target.code = #440071000124103
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #6
* group[=].element[=].display = "Nursing Home/Long Term Care Facility"
* group[=].element[=].target.code = #450381000124100
* group[=].element[=].target.equivalence = #equivalent
* group[+].target = $v3-NullFlavor
* group[=].element[+].code = #7
* group[=].element[=].display = "Other"
* group[=].element[=].target.code = #OTH
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #9
* group[=].element[=].display = "Unknown"
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.equivalence = #equivalent
